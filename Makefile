#
# Copyright (C) 2001-2002 by egnite Software GmbH. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
#
# 1. Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in the
#    documentation and/or other materials provided with the distribution.
# 3. All advertising materials mentioning features or use of this
#    software must display the following acknowledgement:
#
#    This product includes software developed by egnite Software GmbH
#    and its contributors.
#
# THIS SOFTWARE IS PROVIDED BY EGNITE SOFTWARE GMBH AND CONTRIBUTORS
# ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
# FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL EGNITE
# SOFTWARE GMBH OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
# INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
# BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
# OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
# AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF
# THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
# SUCH DAMAGE.
#
# For additional information see http://www.ethernut.de/
#
# $Log: not supported by cvs2svn $
# Revision 1.3  2005/12/20 12:34:42  leoncvs
# *** empty log message ***
#
# Revision 1.2  2005/12/10 18:04:00  leoncvs
# *** empty log message ***
#
# Revision 1.1  2005/11/23 13:35:56  leoncvs
# ������������� ����-������ ��� Charon`a II ��� RTU
#
# Revision 1.1  2003/08/05 18:59:05  haraldkipp
# Release 3.3 update
#
# Revision 1.6  2003/03/31 14:53:02  harald
# Prepare release 3.1
#
# Revision 1.5  2002/11/02 15:20:54  harald
# One pass linker problem fixed
#
# Revision 1.4  2002/10/31 16:25:37  harald
# Mods by troth for Linux
#
# Revision 1.3  2002/08/11 12:28:39  harald
# Using hex file extension now
#
# Revision 1.2  2002/06/26 17:29:03  harald
# First pre-release with 2.4 stack
#
# Revision 1.1  2002/06/04 19:00:49  harald
# First check in
#
#

PROJ = rtu

include c:\ethernut-5.1\nutapp\Makedefs

SRCS =  $(PROJ).c uart.c network.c services.c dallas.c spi.c text_lcd_BOP_24_Rus.c
OBJS =  $(SRCS:.c=.o)
#LIBS =  $(LIBDIR)/nutinit.o -lnutpro -lnutfs -lnutos -lnutdev -lnutos -lnutnet -lnutcrt
LIBS =  $(LIBDIR)/nutinit.o -lnutnet -lnutpro -lnutfs -lnutos -lnutarch -lnutdev -lnutnet -lnutcrt
TARG =  $(PROJ).hex
PARM =  $(PROJ).eep

all: $(OBJS) $(TARG)

include c:\ethernut-5.1\nutapp\Makerules

clean:
	-rm -f $(OBJS)
	#-rm -f $(TARG)
	-rm -f $(PROJ).eep
	-rm -f $(PROJ).obj
	-rm -f $(PROJ).map
	-rm -f $(SRCS:.c=.lst)
	-rm -f $(SRCS:.c=.bak)
	-rm -f $(SRCS:.c=.d)

	