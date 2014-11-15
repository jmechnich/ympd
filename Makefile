BUILDDIR = build
TARGET   = $(BUILDDIR)/ympd

all: $(TARGET)

$(TARGET): $(BUILDDIR)
	cd $(BUILDDIR) && cmake ..
	cd $(BUILDDIR) && $(MAKE)

$(BUILDDIR):
	mkdir -p $(BUILDDIR)

install: $(TARGET)
	cd $(BUILDDIR) && $(MAKE) install
