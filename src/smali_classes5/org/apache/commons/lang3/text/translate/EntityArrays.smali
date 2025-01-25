.class public Lorg/apache/commons/lang3/text/translate/EntityArrays;
.super Ljava/lang/Object;
.source "EntityArrays.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final APOS_ESCAPE:[[Ljava/lang/String;

.field private static final APOS_UNESCAPE:[[Ljava/lang/String;

.field private static final BASIC_ESCAPE:[[Ljava/lang/String;

.field private static final BASIC_UNESCAPE:[[Ljava/lang/String;

.field private static final HTML40_EXTENDED_ESCAPE:[[Ljava/lang/String;

.field private static final HTML40_EXTENDED_UNESCAPE:[[Ljava/lang/String;

.field private static final ISO8859_1_ESCAPE:[[Ljava/lang/String;

.field private static final ISO8859_1_UNESCAPE:[[Ljava/lang/String;

.field private static final JAVA_CTRL_CHARS_ESCAPE:[[Ljava/lang/String;

.field private static final JAVA_CTRL_CHARS_UNESCAPE:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 41
    const/16 v0, 0x60

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\u00a0"

    aput-object v2, v1, v4

    const-string v2, "&nbsp;"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "¡"

    aput-object v2, v1, v4

    const-string v2, "&iexcl;"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "¢"

    aput-object v2, v1, v4

    const-string v2, "&cent;"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "£"

    aput-object v2, v1, v4

    const-string v2, "&pound;"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "¤"

    aput-object v2, v1, v4

    const-string v2, "&curren;"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "¥"

    aput-object v3, v2, v4

    const-string v3, "&yen;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "¦"

    aput-object v3, v2, v4

    const-string v3, "&brvbar;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "§"

    aput-object v3, v2, v4

    const-string v3, "&sect;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "¨"

    aput-object v3, v2, v4

    const-string v3, "&uml;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "©"

    aput-object v3, v2, v4

    const-string v3, "&copy;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ª"

    aput-object v3, v2, v4

    const-string v3, "&ordf;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "«"

    aput-object v3, v2, v4

    const-string v3, "&laquo;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "¬"

    aput-object v3, v2, v4

    const-string v3, "&not;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u00ad"

    aput-object v3, v2, v4

    const-string v3, "&shy;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "®"

    aput-object v3, v2, v4

    const-string v3, "&reg;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "¯"

    aput-object v3, v2, v4

    const-string v3, "&macr;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "°"

    aput-object v3, v2, v4

    const-string v3, "&deg;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "±"

    aput-object v3, v2, v4

    const-string v3, "&plusmn;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "²"

    aput-object v3, v2, v4

    const-string v3, "&sup2;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "³"

    aput-object v3, v2, v4

    const-string v3, "&sup3;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "´"

    aput-object v3, v2, v4

    const-string v3, "&acute;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "µ"

    aput-object v3, v2, v4

    const-string v3, "&micro;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "¶"

    aput-object v3, v2, v4

    const-string v3, "&para;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "·"

    aput-object v3, v2, v4

    const-string v3, "&middot;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "¸"

    aput-object v3, v2, v4

    const-string v3, "&cedil;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "¹"

    aput-object v3, v2, v4

    const-string v3, "&sup1;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "º"

    aput-object v3, v2, v4

    const-string v3, "&ordm;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "»"

    aput-object v3, v2, v4

    const-string v3, "&raquo;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "¼"

    aput-object v3, v2, v4

    const-string v3, "&frac14;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "½"

    aput-object v3, v2, v4

    const-string v3, "&frac12;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "¾"

    aput-object v3, v2, v4

    const-string v3, "&frac34;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "¿"

    aput-object v3, v2, v4

    const-string v3, "&iquest;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "À"

    aput-object v3, v2, v4

    const-string v3, "&Agrave;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Á"

    aput-object v3, v2, v4

    const-string v3, "&Aacute;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Â"

    aput-object v3, v2, v4

    const-string v3, "&Acirc;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ã"

    aput-object v3, v2, v4

    const-string v3, "&Atilde;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ä"

    aput-object v3, v2, v4

    const-string v3, "&Auml;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Å"

    aput-object v3, v2, v4

    const-string v3, "&Aring;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Æ"

    aput-object v3, v2, v4

    const-string v3, "&AElig;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ç"

    aput-object v3, v2, v4

    const-string v3, "&Ccedil;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "È"

    aput-object v3, v2, v4

    const-string v3, "&Egrave;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "É"

    aput-object v3, v2, v4

    const-string v3, "&Eacute;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ê"

    aput-object v3, v2, v4

    const-string v3, "&Ecirc;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ë"

    aput-object v3, v2, v4

    const-string v3, "&Euml;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ì"

    aput-object v3, v2, v4

    const-string v3, "&Igrave;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Í"

    aput-object v3, v2, v4

    const-string v3, "&Iacute;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Î"

    aput-object v3, v2, v4

    const-string v3, "&Icirc;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ï"

    aput-object v3, v2, v4

    const-string v3, "&Iuml;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ð"

    aput-object v3, v2, v4

    const-string v3, "&ETH;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ñ"

    aput-object v3, v2, v4

    const-string v3, "&Ntilde;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ò"

    aput-object v3, v2, v4

    const-string v3, "&Ograve;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ó"

    aput-object v3, v2, v4

    const-string v3, "&Oacute;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ô"

    aput-object v3, v2, v4

    const-string v3, "&Ocirc;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Õ"

    aput-object v3, v2, v4

    const-string v3, "&Otilde;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ö"

    aput-object v3, v2, v4

    const-string v3, "&Ouml;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "×"

    aput-object v3, v2, v4

    const-string v3, "&times;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ø"

    aput-object v3, v2, v4

    const-string v3, "&Oslash;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ù"

    aput-object v3, v2, v4

    const-string v3, "&Ugrave;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ú"

    aput-object v3, v2, v4

    const-string v3, "&Uacute;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Û"

    aput-object v3, v2, v4

    const-string v3, "&Ucirc;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ü"

    aput-object v3, v2, v4

    const-string v3, "&Uuml;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ý"

    aput-object v3, v2, v4

    const-string v3, "&Yacute;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Þ"

    aput-object v3, v2, v4

    const-string v3, "&THORN;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ß"

    aput-object v3, v2, v4

    const-string v3, "&szlig;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "à"

    aput-object v3, v2, v4

    const-string v3, "&agrave;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "á"

    aput-object v3, v2, v4

    const-string v3, "&aacute;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "â"

    aput-object v3, v2, v4

    const-string v3, "&acirc;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ã"

    aput-object v3, v2, v4

    const-string v3, "&atilde;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ä"

    aput-object v3, v2, v4

    const-string v3, "&auml;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "å"

    aput-object v3, v2, v4

    const-string v3, "&aring;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "æ"

    aput-object v3, v2, v4

    const-string v3, "&aelig;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ç"

    aput-object v3, v2, v4

    const-string v3, "&ccedil;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "è"

    aput-object v3, v2, v4

    const-string v3, "&egrave;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "é"

    aput-object v3, v2, v4

    const-string v3, "&eacute;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ê"

    aput-object v3, v2, v4

    const-string v3, "&ecirc;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ë"

    aput-object v3, v2, v4

    const-string v3, "&euml;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ì"

    aput-object v3, v2, v4

    const-string v3, "&igrave;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "í"

    aput-object v3, v2, v4

    const-string v3, "&iacute;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "î"

    aput-object v3, v2, v4

    const-string v3, "&icirc;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ï"

    aput-object v3, v2, v4

    const-string v3, "&iuml;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ð"

    aput-object v3, v2, v4

    const-string v3, "&eth;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ñ"

    aput-object v3, v2, v4

    const-string v3, "&ntilde;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ò"

    aput-object v3, v2, v4

    const-string v3, "&ograve;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ó"

    aput-object v3, v2, v4

    const-string v3, "&oacute;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ô"

    aput-object v3, v2, v4

    const-string v3, "&ocirc;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "õ"

    aput-object v3, v2, v4

    const-string v3, "&otilde;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ö"

    aput-object v3, v2, v4

    const-string v3, "&ouml;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "÷"

    aput-object v3, v2, v4

    const-string v3, "&divide;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ø"

    aput-object v3, v2, v4

    const-string v3, "&oslash;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ù"

    aput-object v3, v2, v4

    const-string v3, "&ugrave;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ú"

    aput-object v3, v2, v4

    const-string v3, "&uacute;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "û"

    aput-object v3, v2, v4

    const-string v3, "&ucirc;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ü"

    aput-object v3, v2, v4

    const-string v3, "&uuml;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ý"

    aput-object v3, v2, v4

    const-string v3, "&yacute;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "þ"

    aput-object v3, v2, v4

    const-string v3, "&thorn;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ÿ"

    aput-object v3, v2, v4

    const-string v3, "&yuml;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/lang3/text/translate/EntityArrays;->ISO8859_1_ESCAPE:[[Ljava/lang/String;

    .line 148
    invoke-static {v0}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->invert([[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/text/translate/EntityArrays;->ISO8859_1_UNESCAPE:[[Ljava/lang/String;

    .line 160
    const/16 v0, 0x98

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "ƒ"

    aput-object v2, v1, v4

    const-string v2, "&fnof;"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Α"

    aput-object v2, v1, v4

    const-string v2, "&Alpha;"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Β"

    aput-object v2, v1, v4

    const-string v2, "&Beta;"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Γ"

    aput-object v2, v1, v4

    const-string v2, "&Gamma;"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Δ"

    aput-object v2, v1, v4

    const-string v2, "&Delta;"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ε"

    aput-object v3, v2, v4

    const-string v3, "&Epsilon;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ζ"

    aput-object v3, v2, v4

    const-string v3, "&Zeta;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Η"

    aput-object v3, v2, v4

    const-string v3, "&Eta;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Θ"

    aput-object v3, v2, v4

    const-string v3, "&Theta;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ι"

    aput-object v3, v2, v4

    const-string v3, "&Iota;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Κ"

    aput-object v3, v2, v4

    const-string v3, "&Kappa;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Λ"

    aput-object v3, v2, v4

    const-string v3, "&Lambda;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Μ"

    aput-object v3, v2, v4

    const-string v3, "&Mu;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ν"

    aput-object v3, v2, v4

    const-string v3, "&Nu;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ξ"

    aput-object v3, v2, v4

    const-string v3, "&Xi;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ο"

    aput-object v3, v2, v4

    const-string v3, "&Omicron;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Π"

    aput-object v3, v2, v4

    const-string v3, "&Pi;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ρ"

    aput-object v3, v2, v4

    const-string v3, "&Rho;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Σ"

    aput-object v3, v2, v4

    const-string v3, "&Sigma;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Τ"

    aput-object v3, v2, v4

    const-string v3, "&Tau;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Υ"

    aput-object v3, v2, v4

    const-string v3, "&Upsilon;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Φ"

    aput-object v3, v2, v4

    const-string v3, "&Phi;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Χ"

    aput-object v3, v2, v4

    const-string v3, "&Chi;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ψ"

    aput-object v3, v2, v4

    const-string v3, "&Psi;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ω"

    aput-object v3, v2, v4

    const-string v3, "&Omega;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "α"

    aput-object v3, v2, v4

    const-string v3, "&alpha;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "β"

    aput-object v3, v2, v4

    const-string v3, "&beta;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "γ"

    aput-object v3, v2, v4

    const-string v3, "&gamma;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "δ"

    aput-object v3, v2, v4

    const-string v3, "&delta;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ε"

    aput-object v3, v2, v4

    const-string v3, "&epsilon;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ζ"

    aput-object v3, v2, v4

    const-string v3, "&zeta;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "η"

    aput-object v3, v2, v4

    const-string v3, "&eta;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "θ"

    aput-object v3, v2, v4

    const-string v3, "&theta;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ι"

    aput-object v3, v2, v4

    const-string v3, "&iota;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "κ"

    aput-object v3, v2, v4

    const-string v3, "&kappa;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "λ"

    aput-object v3, v2, v4

    const-string v3, "&lambda;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "μ"

    aput-object v3, v2, v4

    const-string v3, "&mu;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ν"

    aput-object v3, v2, v4

    const-string v3, "&nu;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ξ"

    aput-object v3, v2, v4

    const-string v3, "&xi;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ο"

    aput-object v3, v2, v4

    const-string v3, "&omicron;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "π"

    aput-object v3, v2, v4

    const-string v3, "&pi;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ρ"

    aput-object v3, v2, v4

    const-string v3, "&rho;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ς"

    aput-object v3, v2, v4

    const-string v3, "&sigmaf;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "σ"

    aput-object v3, v2, v4

    const-string v3, "&sigma;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "τ"

    aput-object v3, v2, v4

    const-string v3, "&tau;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "υ"

    aput-object v3, v2, v4

    const-string v3, "&upsilon;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "φ"

    aput-object v3, v2, v4

    const-string v3, "&phi;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "χ"

    aput-object v3, v2, v4

    const-string v3, "&chi;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ψ"

    aput-object v3, v2, v4

    const-string v3, "&psi;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ω"

    aput-object v3, v2, v4

    const-string v3, "&omega;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ϑ"

    aput-object v3, v2, v4

    const-string v3, "&thetasym;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ϒ"

    aput-object v3, v2, v4

    const-string v3, "&upsih;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ϖ"

    aput-object v3, v2, v4

    const-string v3, "&piv;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "•"

    aput-object v3, v2, v4

    const-string v3, "&bull;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "…"

    aput-object v3, v2, v4

    const-string v3, "&hellip;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "′"

    aput-object v3, v2, v4

    const-string v3, "&prime;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "″"

    aput-object v3, v2, v4

    const-string v3, "&Prime;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "‾"

    aput-object v3, v2, v4

    const-string v3, "&oline;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "⁄"

    aput-object v3, v2, v4

    const-string v3, "&frasl;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "℘"

    aput-object v3, v2, v4

    const-string v3, "&weierp;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ℑ"

    aput-object v3, v2, v4

    const-string v3, "&image;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ℜ"

    aput-object v3, v2, v4

    const-string v3, "&real;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "™"

    aput-object v3, v2, v4

    const-string v3, "&trade;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ℵ"

    aput-object v3, v2, v4

    const-string v3, "&alefsym;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "←"

    aput-object v3, v2, v4

    const-string v3, "&larr;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "↑"

    aput-object v3, v2, v4

    const-string v3, "&uarr;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "→"

    aput-object v3, v2, v4

    const-string v3, "&rarr;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "↓"

    aput-object v3, v2, v4

    const-string v3, "&darr;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "↔"

    aput-object v3, v2, v4

    const-string v3, "&harr;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "↵"

    aput-object v3, v2, v4

    const-string v3, "&crarr;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "⇐"

    aput-object v3, v2, v4

    const-string v3, "&lArr;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "⇑"

    aput-object v3, v2, v4

    const-string v3, "&uArr;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "⇒"

    aput-object v3, v2, v4

    const-string v3, "&rArr;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "⇓"

    aput-object v3, v2, v4

    const-string v3, "&dArr;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "⇔"

    aput-object v3, v2, v4

    const-string v3, "&hArr;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "∀"

    aput-object v3, v2, v4

    const-string v3, "&forall;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "∂"

    aput-object v3, v2, v4

    const-string v3, "&part;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "∃"

    aput-object v3, v2, v4

    const-string v3, "&exist;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "∅"

    aput-object v3, v2, v4

    const-string v3, "&empty;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "∇"

    aput-object v3, v2, v4

    const-string v3, "&nabla;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "∈"

    aput-object v3, v2, v4

    const-string v3, "&isin;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "∉"

    aput-object v3, v2, v4

    const-string v3, "&notin;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "∋"

    aput-object v3, v2, v4

    const-string v3, "&ni;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "∏"

    aput-object v3, v2, v4

    const-string v3, "&prod;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "∑"

    aput-object v3, v2, v4

    const-string v3, "&sum;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "−"

    aput-object v3, v2, v4

    const-string v3, "&minus;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "∗"

    aput-object v3, v2, v4

    const-string v3, "&lowast;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "√"

    aput-object v3, v2, v4

    const-string v3, "&radic;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "∝"

    aput-object v3, v2, v4

    const-string v3, "&prop;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "∞"

    aput-object v3, v2, v4

    const-string v3, "&infin;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "∠"

    aput-object v3, v2, v4

    const-string v3, "&ang;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "∧"

    aput-object v3, v2, v4

    const-string v3, "&and;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "∨"

    aput-object v3, v2, v4

    const-string v3, "&or;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "∩"

    aput-object v3, v2, v4

    const-string v3, "&cap;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "∪"

    aput-object v3, v2, v4

    const-string v3, "&cup;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "∫"

    aput-object v3, v2, v4

    const-string v3, "&int;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "∴"

    aput-object v3, v2, v4

    const-string v3, "&there4;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "∼"

    aput-object v3, v2, v4

    const-string v3, "&sim;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "≅"

    aput-object v3, v2, v4

    const-string v3, "&cong;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "≈"

    aput-object v3, v2, v4

    const-string v3, "&asymp;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "≠"

    aput-object v3, v2, v4

    const-string v3, "&ne;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "≡"

    aput-object v3, v2, v4

    const-string v3, "&equiv;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "≤"

    aput-object v3, v2, v4

    const-string v3, "&le;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "≥"

    aput-object v3, v2, v4

    const-string v3, "&ge;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "⊂"

    aput-object v3, v2, v4

    const-string v3, "&sub;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x69

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "⊃"

    aput-object v3, v2, v4

    const-string v3, "&sup;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "⊄"

    aput-object v3, v2, v4

    const-string v3, "&nsub;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "⊆"

    aput-object v3, v2, v4

    const-string v3, "&sube;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "⊇"

    aput-object v3, v2, v4

    const-string v3, "&supe;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "⊕"

    aput-object v3, v2, v4

    const-string v3, "&oplus;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "⊗"

    aput-object v3, v2, v4

    const-string v3, "&otimes;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "⊥"

    aput-object v3, v2, v4

    const-string v3, "&perp;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x70

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "⋅"

    aput-object v3, v2, v4

    const-string v3, "&sdot;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x71

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "⌈"

    aput-object v3, v2, v4

    const-string v3, "&lceil;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x72

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "⌉"

    aput-object v3, v2, v4

    const-string v3, "&rceil;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x73

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "⌊"

    aput-object v3, v2, v4

    const-string v3, "&lfloor;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x74

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "⌋"

    aput-object v3, v2, v4

    const-string v3, "&rfloor;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x75

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "〈"

    aput-object v3, v2, v4

    const-string v3, "&lang;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x76

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "〉"

    aput-object v3, v2, v4

    const-string v3, "&rang;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x77

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "◊"

    aput-object v3, v2, v4

    const-string v3, "&loz;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x78

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "♠"

    aput-object v3, v2, v4

    const-string v3, "&spades;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x79

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "♣"

    aput-object v3, v2, v4

    const-string v3, "&clubs;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "♥"

    aput-object v3, v2, v4

    const-string v3, "&hearts;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "♦"

    aput-object v3, v2, v4

    const-string v3, "&diams;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Œ"

    aput-object v3, v2, v4

    const-string v3, "&OElig;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "œ"

    aput-object v3, v2, v4

    const-string v3, "&oelig;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Š"

    aput-object v3, v2, v4

    const-string v3, "&Scaron;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "š"

    aput-object v3, v2, v4

    const-string v3, "&scaron;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x80

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ÿ"

    aput-object v3, v2, v4

    const-string v3, "&Yuml;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x81

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ˆ"

    aput-object v3, v2, v4

    const-string v3, "&circ;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x82

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "˜"

    aput-object v3, v2, v4

    const-string v3, "&tilde;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x83

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u2002"

    aput-object v3, v2, v4

    const-string v3, "&ensp;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x84

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u2003"

    aput-object v3, v2, v4

    const-string v3, "&emsp;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x85

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u2009"

    aput-object v3, v2, v4

    const-string v3, "&thinsp;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x86

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u200c"

    aput-object v3, v2, v4

    const-string v3, "&zwnj;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x87

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u200d"

    aput-object v3, v2, v4

    const-string v3, "&zwj;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x88

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u200e"

    aput-object v3, v2, v4

    const-string v3, "&lrm;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x89

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u200f"

    aput-object v3, v2, v4

    const-string v3, "&rlm;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "–"

    aput-object v3, v2, v4

    const-string v3, "&ndash;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "—"

    aput-object v3, v2, v4

    const-string v3, "&mdash;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "‘"

    aput-object v3, v2, v4

    const-string v3, "&lsquo;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "’"

    aput-object v3, v2, v4

    const-string v3, "&rsquo;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "‚"

    aput-object v3, v2, v4

    const-string v3, "&sbquo;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "“"

    aput-object v3, v2, v4

    const-string v3, "&ldquo;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x90

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "”"

    aput-object v3, v2, v4

    const-string v3, "&rdquo;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x91

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "„"

    aput-object v3, v2, v4

    const-string v3, "&bdquo;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x92

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "†"

    aput-object v3, v2, v4

    const-string v3, "&dagger;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x93

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "‡"

    aput-object v3, v2, v4

    const-string v3, "&Dagger;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x94

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "‰"

    aput-object v3, v2, v4

    const-string v3, "&permil;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x95

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "‹"

    aput-object v3, v2, v4

    const-string v3, "&lsaquo;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x96

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "›"

    aput-object v3, v2, v4

    const-string v3, "&rsaquo;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x97

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "€"

    aput-object v3, v2, v4

    const-string v3, "&euro;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/lang3/text/translate/EntityArrays;->HTML40_EXTENDED_ESCAPE:[[Ljava/lang/String;

    .line 365
    invoke-static {v0}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->invert([[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/text/translate/EntityArrays;->HTML40_EXTENDED_UNESCAPE:[[Ljava/lang/String;

    .line 377
    new-array v0, v8, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\""

    aput-object v2, v1, v4

    const-string v2, "&quot;"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "&"

    aput-object v2, v1, v4

    const-string v2, "&amp;"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "<"

    aput-object v2, v1, v4

    const-string v2, "&lt;"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, ">"

    aput-object v2, v1, v4

    const-string v2, "&gt;"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    sput-object v0, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE:[[Ljava/lang/String;

    .line 392
    invoke-static {v0}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->invert([[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_UNESCAPE:[[Ljava/lang/String;

    .line 402
    new-array v0, v5, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\'"

    aput-object v2, v1, v4

    const-string v2, "&apos;"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/commons/lang3/text/translate/EntityArrays;->APOS_ESCAPE:[[Ljava/lang/String;

    .line 414
    invoke-static {v0}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->invert([[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/text/translate/EntityArrays;->APOS_UNESCAPE:[[Ljava/lang/String;

    .line 426
    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\b"

    aput-object v2, v1, v4

    const-string v2, "\\b"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\n"

    aput-object v2, v1, v4

    const-string v2, "\\n"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\t"

    aput-object v2, v1, v4

    const-string v2, "\\t"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\f"

    aput-object v2, v1, v4

    const-string v2, "\\f"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\r"

    aput-object v2, v1, v4

    const-string v2, "\\r"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    sput-object v0, Lorg/apache/commons/lang3/text/translate/EntityArrays;->JAVA_CTRL_CHARS_ESCAPE:[[Ljava/lang/String;

    .line 442
    invoke-static {v0}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->invert([[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/text/translate/EntityArrays;->JAVA_CTRL_CHARS_UNESCAPE:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static APOS_ESCAPE()[[Ljava/lang/String;
    .registers 1

    .line 399
    sget-object v0, Lorg/apache/commons/lang3/text/translate/EntityArrays;->APOS_ESCAPE:[[Ljava/lang/String;

    invoke-virtual {v0}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    return-object v0
.end method

.method public static APOS_UNESCAPE()[[Ljava/lang/String;
    .registers 1

    .line 411
    sget-object v0, Lorg/apache/commons/lang3/text/translate/EntityArrays;->APOS_UNESCAPE:[[Ljava/lang/String;

    invoke-virtual {v0}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    return-object v0
.end method

.method public static BASIC_ESCAPE()[[Ljava/lang/String;
    .registers 1

    .line 374
    sget-object v0, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE:[[Ljava/lang/String;

    invoke-virtual {v0}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    return-object v0
.end method

.method public static BASIC_UNESCAPE()[[Ljava/lang/String;
    .registers 1

    .line 389
    sget-object v0, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_UNESCAPE:[[Ljava/lang/String;

    invoke-virtual {v0}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    return-object v0
.end method

.method public static HTML40_EXTENDED_ESCAPE()[[Ljava/lang/String;
    .registers 1

    .line 157
    sget-object v0, Lorg/apache/commons/lang3/text/translate/EntityArrays;->HTML40_EXTENDED_ESCAPE:[[Ljava/lang/String;

    invoke-virtual {v0}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    return-object v0
.end method

.method public static HTML40_EXTENDED_UNESCAPE()[[Ljava/lang/String;
    .registers 1

    .line 362
    sget-object v0, Lorg/apache/commons/lang3/text/translate/EntityArrays;->HTML40_EXTENDED_UNESCAPE:[[Ljava/lang/String;

    invoke-virtual {v0}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    return-object v0
.end method

.method public static ISO8859_1_ESCAPE()[[Ljava/lang/String;
    .registers 1

    .line 38
    sget-object v0, Lorg/apache/commons/lang3/text/translate/EntityArrays;->ISO8859_1_ESCAPE:[[Ljava/lang/String;

    invoke-virtual {v0}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    return-object v0
.end method

.method public static ISO8859_1_UNESCAPE()[[Ljava/lang/String;
    .registers 1

    .line 145
    sget-object v0, Lorg/apache/commons/lang3/text/translate/EntityArrays;->ISO8859_1_UNESCAPE:[[Ljava/lang/String;

    invoke-virtual {v0}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    return-object v0
.end method

.method public static JAVA_CTRL_CHARS_ESCAPE()[[Ljava/lang/String;
    .registers 1

    .line 423
    sget-object v0, Lorg/apache/commons/lang3/text/translate/EntityArrays;->JAVA_CTRL_CHARS_ESCAPE:[[Ljava/lang/String;

    invoke-virtual {v0}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    return-object v0
.end method

.method public static JAVA_CTRL_CHARS_UNESCAPE()[[Ljava/lang/String;
    .registers 1

    .line 439
    sget-object v0, Lorg/apache/commons/lang3/text/translate/EntityArrays;->JAVA_CTRL_CHARS_UNESCAPE:[[Ljava/lang/String;

    invoke-virtual {v0}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    return-object v0
.end method

.method public static invert([[Ljava/lang/String;)[[Ljava/lang/String;
    .registers 7

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 450
    array-length v0, p0

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    move v1, v2

    .line 451
    :goto_11
    array-length v3, p0

    if-ge v1, v3, :cond_27

    .line 452
    aget-object v3, v0, v1

    aget-object v4, p0, v1

    aget-object v4, v4, v5

    aput-object v4, v3, v2

    .line 453
    aget-object v3, v0, v1

    aget-object v4, p0, v1

    aget-object v4, v4, v2

    aput-object v4, v3, v5

    .line 451
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 455
    :cond_27
    return-object v0
.end method
