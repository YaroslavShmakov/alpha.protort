TEMPLATE = subdirs

SUBDIRS += \
    protocol \
    link \
    node \
    terminal \
    designer

link.depends = protocol
node.depends = link
terminal.depends = link
designer.depends = link
