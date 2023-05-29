CXX           = g++
LINK          = g++
DEFINES       = 
CFLAGS        = -g -D_REENTRANT $(DEFINES)
CXXFLAGS      = -g -D_REENTRANT $(DEFINES)
INCPATH       = -I../../cppunit-1.12.1/include
LFLAGS        = -g 
LIBS          =
DEL_FILE      = rm -f

####### Files

SOURCES       = calculator.cpp \
		main.cpp
OBJECTS       = calculator.o \
		main.o
TARGET        = calculator

#UNITTEST_OBJECTS = AdditionalMessage.o Asserter.o BriefTestProgressListener.o CompilerOutputter.o DefaultProtector.o Exception.o Message.o Protector.o ProtectorChain.o RepeatedTest.o SourceLine.o StringTools.o SynchronizedObject.o Test.o TestAssert.o TestCase.o TestCaseDecorator.o TestComposite.o TestDecorator.o TestFactoryRegistry.o TestFailure.o TestLeaf.o TestNamer.o TestPath.o TestResult.o TestResultCollector.o TestRunner.o TestSetUp.o TestSuccessListener.o TestSuite.o TestSuiteBuilderContext.o TextOutputter.o TextTestProgressListener.o TextTestResult.o TextTestRunner.o TypeInfoHelper.o XmlDocument.o XmlElement.o XmlOutputter.o XmlOutputterHook.o

first: all

####### Testing (added)

#tests: unittests
#	-./unittests
#
#unittests: $(OBJECTS) unittests.o $(UNITTEST_OBJECTS)
#	$(LINK) $(LFLAGS) -o $@ $^
#
#testclean:
#	-@$(DEL_FILE) unittests unittests.o $(UNITTEST_OBJECTS)

####### Implicit rules

.SUFFIXES: .o .cpp

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o $@ $<

####### Build rules

all: $(TARGET)

$(TARGET):  $(OBJECTS) main.o 
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

#clean: testclean
#	-@$(DEL_FILE) $(TARGET) unittests.o
#	-@$(DEL_FILE) $(OBJECTS) main.o
#	-@$(DEL_FILE) *~ core *.core
#	-@$(DEL_FILE) *.o.csmes       # (added)

clean:
	-@$(DEL_FILE) $(TARGET) *.o *~ core *.core *.csmes *.csexe # (added)

distclean: clean
	-@$(DEL_FILE) $(TARGET) 
	-@$(DEL_FILE) *.csmes *.csexe # (added)

####### Compile

main.o: main.cpp \
		calculator.hpp

calculator.o: calculator.cpp \
		calculator.hpp

#$(UNITTEST_OBJECTS): %.o : ../../cppunit-1.12.1/src/cppunit/%.cpp
#	$(CXX) -c $(CXXFLAGS) $(INCPATH) $< -o $@
