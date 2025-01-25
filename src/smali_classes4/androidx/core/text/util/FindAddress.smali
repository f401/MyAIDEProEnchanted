.class Landroidx/core/text/util/FindAddress;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/util/FindAddress$ZipRange;
    }
.end annotation


# static fields
.field private static final HOUSE_COMPONENT:Ljava/lang/String; = "(?:one|\\d+([a-z](?=[^a-z]|$)|st|nd|rd|th)?)"

.field private static final HOUSE_END:Ljava/lang/String; = "(?=[,\"\'\t \u00a0 \u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f　\n\u000b\f\r\u0085\u2028\u2029]|$)"

.field private static final HOUSE_POST_DELIM:Ljava/lang/String; = ",\"\'\t \u00a0 \u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f　\n\u000b\f\r\u0085\u2028\u2029"

.field private static final HOUSE_PRE_DELIM:Ljava/lang/String; = ":,\"\'\t \u00a0 \u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f　\n\u000b\f\r\u0085\u2028\u2029"

.field private static final MAX_ADDRESS_LINES:I = 0x5

.field private static final MAX_ADDRESS_WORDS:I = 0xe

.field private static final MAX_LOCATION_NAME_DISTANCE:I = 0x5

.field private static final MIN_ADDRESS_WORDS:I = 0x4

.field private static final NL:Ljava/lang/String; = "\n\u000b\f\r\u0085\u2028\u2029"

.field private static final SP:Ljava/lang/String; = "\t \u00a0 \u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f　"

.field private static final WORD_DELIM:Ljava/lang/String; = ",*•\t \u00a0 \u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f　\n\u000b\f\r\u0085\u2028\u2029"

.field private static final WORD_END:Ljava/lang/String; = "(?=[,*•\t \u00a0 \u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f　\n\u000b\f\r\u0085\u2028\u2029]|$)"

.field private static final WS:Ljava/lang/String; = "\t \u00a0 \u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f　\n\u000b\f\r\u0085\u2028\u2029"

.field private static final kMaxAddressNameWordLength:I = 0x19

.field private static final sHouseNumberRe:Ljava/util/regex/Pattern;

.field private static final sLocationNameRe:Ljava/util/regex/Pattern;

.field private static final sStateRe:Ljava/util/regex/Pattern;

.field private static final sStateZipCodeRanges:[Landroidx/core/text/util/FindAddress$ZipRange;

.field private static final sSuffixedNumberRe:Ljava/util/regex/Pattern;

.field private static final sWordRe:Ljava/util/regex/Pattern;

.field private static final sZipCodeRe:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    const/16 v10, 0x14

    const/4 v9, 0x6

    const/4 v8, 0x2

    const/16 v6, 0x60

    const/4 v7, -0x1

    const/16 v0, 0x3b

    new-array v0, v0, [Landroidx/core/text/util/FindAddress$ZipRange;

    const/4 v1, 0x0

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0x63

    const/16 v4, 0x63

    invoke-direct {v2, v3, v4, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0x23

    const/16 v4, 0x24

    invoke-direct {v2, v3, v4, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v2, 0x47

    const/16 v3, 0x48

    invoke-direct {v1, v2, v3, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v1, v0, v8

    const/4 v1, 0x3

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    invoke-direct {v2, v6, v6, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0x55

    const/16 v4, 0x56

    invoke-direct {v2, v3, v4, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0x5a

    invoke-direct {v2, v3, v6, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v2, 0x50

    const/16 v3, 0x51

    invoke-direct {v1, v2, v3, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v1, v0, v9

    const/4 v1, 0x7

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    invoke-direct {v2, v9, v9, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    invoke-direct {v2, v10, v10, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0x13

    const/16 v4, 0x13

    invoke-direct {v2, v3, v4, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0x20

    const/16 v4, 0x22

    invoke-direct {v2, v3, v4, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    invoke-direct {v2, v6, v6, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0x1e

    const/16 v4, 0x1f

    invoke-direct {v2, v3, v4, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    invoke-direct {v2, v6, v6, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    invoke-direct {v2, v6, v6, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0x32

    const/16 v4, 0x34

    invoke-direct {v2, v3, v4, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0x53

    const/16 v4, 0x53

    invoke-direct {v2, v3, v4, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0x3c

    const/16 v4, 0x3e

    invoke-direct {v2, v3, v4, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-direct {v2, v3, v4, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0x42

    const/16 v4, 0x43

    const/16 v5, 0x49

    invoke-direct {v2, v3, v4, v5, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v2, 0x28

    const/16 v3, 0x2a

    invoke-direct {v1, v2, v3, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v1, v0, v10

    const/16 v1, 0x15

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0x46

    const/16 v4, 0x47

    invoke-direct {v2, v3, v4, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v8, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0x15

    invoke-direct {v2, v10, v3, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/4 v3, 0x3

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    invoke-direct {v2, v6, v6, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0x30

    const/16 v4, 0x31

    invoke-direct {v2, v3, v4, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0x37

    const/16 v4, 0x38

    invoke-direct {v2, v3, v4, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0x3f

    const/16 v4, 0x41

    invoke-direct {v2, v3, v4, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    invoke-direct {v2, v6, v6, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0x26

    const/16 v4, 0x27

    invoke-direct {v2, v3, v4, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0x37

    const/16 v4, 0x38

    invoke-direct {v2, v3, v4, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0x1b

    const/16 v4, 0x1c

    invoke-direct {v2, v3, v4, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0x3a

    const/16 v4, 0x3a

    invoke-direct {v2, v3, v4, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0x44

    const/16 v4, 0x45

    invoke-direct {v2, v3, v4, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/4 v3, 0x3

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v2, v3, v4, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0x57

    const/16 v4, 0x58

    const/16 v5, 0x56

    invoke-direct {v2, v3, v4, v5, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0x58

    const/16 v4, 0x59

    invoke-direct {v2, v3, v4, v6, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0xa

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v9}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0x2b

    const/16 v4, 0x2d

    invoke-direct {v2, v3, v4, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0x49

    const/16 v4, 0x4a

    invoke-direct {v2, v3, v4, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0x61

    const/16 v4, 0x61

    invoke-direct {v2, v3, v4, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0xf

    const/16 v4, 0x13

    invoke-direct {v2, v3, v4, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/4 v3, 0x0

    const/16 v4, 0x9

    invoke-direct {v2, v9, v9, v3, v4}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    invoke-direct {v2, v6, v6, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    invoke-direct {v2, v8, v8, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0x1d

    const/16 v4, 0x1d

    invoke-direct {v2, v3, v4, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0x39

    const/16 v4, 0x39

    invoke-direct {v2, v3, v4, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0x25

    const/16 v4, 0x26

    invoke-direct {v2, v3, v4, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0x4b

    const/16 v4, 0x4f

    const/16 v5, 0x57

    const/16 v6, 0x58

    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0x54

    const/16 v4, 0x54

    invoke-direct {v2, v3, v4, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0x16

    const/16 v4, 0x18

    invoke-direct {v2, v3, v4, v10, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0x9

    invoke-direct {v2, v9, v3, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0x62

    const/16 v4, 0x63

    invoke-direct {v2, v3, v4, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0x35

    const/16 v4, 0x36

    invoke-direct {v2, v3, v4, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0x18

    const/16 v4, 0x1a

    invoke-direct {v2, v3, v4, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v3, 0x52

    const/16 v4, 0x53

    invoke-direct {v2, v3, v4, v7, v7}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v2, v0, v1

    sput-object v0, Landroidx/core/text/util/FindAddress;->sStateZipCodeRanges:[Landroidx/core/text/util/FindAddress$ZipRange;

    const-string v0, "[^,*•\t \u00a0 \u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f　\n\u000b\f\r\u0085\u2028\u2029]+(?=[,*•\t \u00a0 \u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f　\n\u000b\f\r\u0085\u2028\u2029]|$)"

    invoke-static {v0, v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/core/text/util/FindAddress;->sWordRe:Ljava/util/regex/Pattern;

    const-string v0, "(?:one|\\d+([a-z](?=[^a-z]|$)|st|nd|rd|th)?)(?:-(?:one|\\d+([a-z](?=[^a-z]|$)|st|nd|rd|th)?))*(?=[,\"\'\t \u00a0 \u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f　\n\u000b\f\r\u0085\u2028\u2029]|$)"

    invoke-static {v0, v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/core/text/util/FindAddress;->sHouseNumberRe:Ljava/util/regex/Pattern;

    const-string v0, "(?:(ak|alaska)|(al|alabama)|(ar|arkansas)|(as|american[\t \u00a0 \u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f　]+samoa)|(az|arizona)|(ca|california)|(co|colorado)|(ct|connecticut)|(dc|district[\t \u00a0 \u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f　]+of[\t \u00a0 \u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f　]+columbia)|(de|delaware)|(fl|florida)|(fm|federated[\t \u00a0 \u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f　]+states[\t \u00a0 \u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f　]+of[\t \u00a0 \u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f　]+micronesia)|(ga|georgia)|(gu|guam)|(hi|hawaii)|(ia|iowa)|(id|idaho)|(il|illinois)|(in|indiana)|(ks|kansas)|(ky|kentucky)|(la|louisiana)|(ma|massachusetts)|(md|maryland)|(me|maine)|(mh|marshall[\t \u00a0 \u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f　]+islands)|(mi|michigan)|(mn|minnesota)|(mo|missouri)|(mp|northern[\t \u00a0 \u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f　]+mariana[\t \u00a0 \u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f　]+islands)|(ms|mississippi)|(mt|montana)|(nc|north[\t \u00a0 \u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f　]+carolina)|(nd|north[\t \u00a0 \u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f　]+dakota)|(ne|nebraska)|(nh|new[\t \u00a0 \u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f　]+hampshire)|(nj|new[\t \u00a0 \u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f　]+jersey)|(nm|new[\t \u00a0 \u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f　]+mexico)|(nv|nevada)|(ny|new[\t \u00a0 \u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f　]+york)|(oh|ohio)|(ok|oklahoma)|(or|oregon)|(pa|pennsylvania)|(pr|puerto[\t \u00a0 \u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f　]+rico)|(pw|palau)|(ri|rhode[\t \u00a0 \u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f　]+island)|(sc|south[\t \u00a0 \u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f　]+carolina)|(sd|south[\t \u00a0 \u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f　]+dakota)|(tn|tennessee)|(tx|texas)|(ut|utah)|(va|virginia)|(vi|virgin[\t \u00a0 \u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f　]+islands)|(vt|vermont)|(wa|washington)|(wi|wisconsin)|(wv|west[\t \u00a0 \u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f　]+virginia)|(wy|wyoming))(?=[,*•\t \u00a0 \u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f　\n\u000b\f\r\u0085\u2028\u2029]|$)"

    invoke-static {v0, v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/core/text/util/FindAddress;->sStateRe:Ljava/util/regex/Pattern;

    const-string v0, "(?:alley|annex|arcade|ave[.]?|avenue|alameda|bayou|beach|bend|bluffs?|bottom|boulevard|branch|bridge|brooks?|burgs?|bypass|broadway|camino|camp|canyon|cape|causeway|centers?|circles?|cliffs?|club|common|corners?|course|courts?|coves?|creek|crescent|crest|crossing|crossroad|curve|circulo|dale|dam|divide|drives?|estates?|expressway|extensions?|falls?|ferry|fields?|flats?|fords?|forest|forges?|forks?|fort|freeway|gardens?|gateway|glens?|greens?|groves?|harbors?|haven|heights|highway|hills?|hollow|inlet|islands?|isle|junctions?|keys?|knolls?|lakes?|land|landing|lane|lights?|loaf|locks?|lodge|loop|mall|manors?|meadows?|mews|mills?|mission|motorway|mount|mountains?|neck|orchard|oval|overpass|parks?|parkways?|pass|passage|path|pike|pines?|plains?|plaza|points?|ports?|prairie|privada|radial|ramp|ranch|rapids?|rd[.]?|rest|ridges?|river|roads?|route|row|rue|run|shoals?|shores?|skyway|springs?|spurs?|squares?|station|stravenue|stream|st[.]?|streets?|summit|speedway|terrace|throughway|trace|track|trafficway|trail|tunnel|turnpike|underpass|unions?|valleys?|viaduct|views?|villages?|ville|vista|walks?|wall|ways?|wells?|xing|xrd)(?=[,*•\t \u00a0 \u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f　\n\u000b\f\r\u0085\u2028\u2029]|$)"

    invoke-static {v0, v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/core/text/util/FindAddress;->sLocationNameRe:Ljava/util/regex/Pattern;

    const-string v0, "(\\d+)(st|nd|rd|th)"

    invoke-static {v0, v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/core/text/util/FindAddress;->sSuffixedNumberRe:Ljava/util/regex/Pattern;

    const-string v0, "(?:\\d{5}(?:-\\d{4})?)(?=[,*•\t \u00a0 \u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f　\n\u000b\f\r\u0085\u2028\u2029]|$)"

    invoke-static {v0, v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/core/text/util/FindAddress;->sZipCodeRe:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static attemptMatch(Ljava/lang/String;Ljava/util/regex/MatchResult;)I
    .registers 13

    invoke-interface {p1}, Ljava/util/regex/MatchResult;->end()I

    move-result v7

    sget-object v0, Landroidx/core/text/util/FindAddress;->sWordRe:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string v8, ""

    const/4 v6, 0x1

    const/4 v1, 0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v0, -0x1

    move v5, v1

    :goto_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v7, v1, :cond_e7

    invoke-virtual {v9, v7}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_23
    neg-int v0, v0

    :cond_24
    :goto_24
    return v0

    :cond_25
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->start()I

    move-result v10

    sub-int/2addr v1, v10

    const/16 v10, 0x19

    if-le v1, v10, :cond_e4

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    goto :goto_23

    :goto_37
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    if-ge v1, v7, :cond_4f

    const-string v7, "\n\u000b\f\r\u0085\u2028\u2029"

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v10, -0x1

    if-eq v7, v10, :cond_4c

    add-int/lit8 v6, v6, 0x1

    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_4f
    const/4 v7, 0x5

    if-le v6, v7, :cond_58

    :cond_52
    :goto_52
    if-gtz v0, :cond_24

    if-lez v2, :cond_df

    :goto_56
    neg-int v0, v2

    goto :goto_24

    :cond_58
    add-int/lit8 v5, v5, 0x1

    const/16 v7, 0xe

    if-gt v5, v7, :cond_52

    invoke-static {p0, v1}, Landroidx/core/text/util/FindAddress;->matchHouseNumber(Ljava/lang/String;I)Ljava/util/regex/MatchResult;

    move-result-object v7

    if-eqz v7, :cond_79

    if-eqz v4, :cond_6b

    const/4 v7, 0x1

    if-le v6, v7, :cond_6b

    neg-int v0, v1

    goto :goto_24

    :cond_6b
    const/4 v7, -0x1

    if-ne v2, v7, :cond_e2

    :goto_6e
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    move v2, v1

    goto :goto_13

    :cond_79
    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/core/text/util/FindAddress;->isValidLocationName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_88

    const/4 v4, 0x0

    const/4 v3, 0x1

    move v1, v2

    goto :goto_6e

    :cond_88
    const/4 v4, 0x5

    if-ne v5, v4, :cond_92

    if-nez v3, :cond_92

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    goto :goto_52

    :cond_92
    if-eqz v3, :cond_dc

    const/4 v4, 0x4

    if-le v5, v4, :cond_dc

    invoke-static {p0, v1}, Landroidx/core/text/util/FindAddress;->matchState(Ljava/lang/String;I)Ljava/util/regex/MatchResult;

    move-result-object v1

    if-eqz v1, :cond_dc

    const-string v4, "et"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b7

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "al"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b7

    invoke-interface {v1}, Ljava/util/regex/MatchResult;->end()I

    move-result v1

    goto :goto_52

    :cond_b7
    sget-object v4, Landroidx/core/text/util/FindAddress;->sWordRe:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/regex/MatchResult;->end()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v7

    if-eqz v7, :cond_d8

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Landroidx/core/text/util/FindAddress;->isValidZipCode(Ljava/lang/String;Ljava/util/regex/MatchResult;)Z

    move-result v1

    if-eqz v1, :cond_dc

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    goto/16 :goto_24

    :cond_d8
    invoke-interface {v1}, Ljava/util/regex/MatchResult;->end()I

    move-result v0

    :cond_dc
    const/4 v4, 0x0

    move v1, v2

    goto :goto_6e

    :cond_df
    move v2, v1

    goto/16 :goto_56

    :cond_e2
    move v1, v2

    goto :goto_6e

    :cond_e4
    move v1, v7

    goto/16 :goto_37

    :cond_e7
    move v1, v7

    goto/16 :goto_52
.end method

.method private static checkHouseNumber(Ljava/lang/String;)Z
    .registers 7

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1a

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_17

    add-int/lit8 v0, v0, 0x1

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_1a
    const/4 v2, 0x5

    if-le v0, v2, :cond_1e

    :cond_1d
    :goto_1d
    return v1

    :cond_1e
    sget-object v0, Landroidx/core/text/util/FindAddress;->sSuffixedNumberRe:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_7c

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    rem-int/lit8 v4, v2, 0xa

    const-string v0, "th"

    if-eq v4, v3, :cond_6e

    if-eq v4, v5, :cond_60

    const/4 v3, 0x3

    if-eq v4, v3, :cond_52

    const-string v0, "th"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1d

    :cond_52
    rem-int/lit8 v2, v2, 0x64

    const/16 v3, 0xd

    if-ne v2, v3, :cond_5d

    :goto_58
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1d

    :cond_5d
    const-string v0, "rd"

    goto :goto_58

    :cond_60
    rem-int/lit8 v2, v2, 0x64

    const/16 v3, 0xc

    if-ne v2, v3, :cond_6b

    :goto_66
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1d

    :cond_6b
    const-string v0, "nd"

    goto :goto_66

    :cond_6e
    rem-int/lit8 v2, v2, 0x64

    const/16 v3, 0xb

    if-ne v2, v3, :cond_79

    :goto_74
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1d

    :cond_79
    const-string v0, "st"

    goto :goto_74

    :cond_7c
    move v1, v3

    goto :goto_1d
.end method

.method static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    sget-object v0, Landroidx/core/text/util/FindAddress;->sHouseNumberRe:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    move v0, v1

    :goto_8
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/text/util/FindAddress;->checkHouseNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-static {p0, v2}, Landroidx/core/text/util/FindAddress;->attemptMatch(Ljava/lang/String;Ljava/util/regex/MatchResult;)I

    move-result v3

    if-lez v3, :cond_27

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_26
    return-object v0

    :cond_27
    neg-int v0, v3

    goto :goto_8

    :cond_29
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    goto :goto_8

    :cond_2e
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public static isValidLocationName(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Landroidx/core/text/util/FindAddress;->sLocationNameRe:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static isValidZipCode(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Landroidx/core/text/util/FindAddress;->sZipCodeRe:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static isValidZipCode(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/text/util/FindAddress;->matchState(Ljava/lang/String;I)Ljava/util/regex/MatchResult;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/text/util/FindAddress;->isValidZipCode(Ljava/lang/String;Ljava/util/regex/MatchResult;)Z

    move-result v0

    return v0
.end method

.method private static isValidZipCode(Ljava/lang/String;Ljava/util/regex/MatchResult;)Z
    .registers 5

    const/4 v2, 0x0

    if-nez p1, :cond_4

    :goto_3
    return v2

    :cond_4
    invoke-interface {p1}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v1

    :goto_8
    if-lez v1, :cond_2f

    add-int/lit8 v0, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2b

    :goto_12
    sget-object v1, Landroidx/core/text/util/FindAddress;->sZipCodeRe:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2d

    sget-object v1, Landroidx/core/text/util/FindAddress;->sStateZipCodeRanges:[Landroidx/core/text/util/FindAddress$ZipRange;

    aget-object v0, v1, v0

    invoke-virtual {v0, p0}, Landroidx/core/text/util/FindAddress$ZipRange;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x1

    :goto_29
    move v2, v0

    goto :goto_3

    :cond_2b
    move v1, v0

    goto :goto_8

    :cond_2d
    move v0, v2

    goto :goto_29

    :cond_2f
    move v0, v1

    goto :goto_12
.end method

.method public static matchHouseNumber(Ljava/lang/String;I)Ljava/util/regex/MatchResult;
    .registers 5

    const/4 v0, 0x0

    if-lez p1, :cond_13

    const-string v1, ":,\"\'\t \u00a0 \u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f　\n\u000b\f\r\u0085\u2028\u2029"

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    :cond_12
    :goto_12
    return-object v0

    :cond_13
    sget-object v1, Landroidx/core/text/util/FindAddress;->sHouseNumberRe:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/text/util/FindAddress;->checkHouseNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object v0, v1

    goto :goto_12
.end method

.method public static matchState(Ljava/lang/String;I)Ljava/util/regex/MatchResult;
    .registers 5

    const/4 v0, 0x0

    if-lez p1, :cond_13

    const-string v1, ",*•\t \u00a0 \u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f　\n\u000b\f\r\u0085\u2028\u2029"

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    :cond_12
    :goto_12
    return-object v0

    :cond_13
    sget-object v1, Landroidx/core/text/util/FindAddress;->sStateRe:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v0

    goto :goto_12
.end method
