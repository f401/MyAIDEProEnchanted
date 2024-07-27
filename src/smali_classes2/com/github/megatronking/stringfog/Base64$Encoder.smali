.class Lcom/github/megatronking/stringfog/Base64$Encoder;
.super Lcom/github/megatronking/stringfog/Base64$Coder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/megatronking/stringfog/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Encoder"
.end annotation


# static fields
.field private static final ENCODE:[B

.field private static final ENCODE_WEBSAFE:[B

.field static final LINE_GROUPS:I = 0x13


# instance fields
.field private final alphabet:[B

.field private count:I

.field final do_cr:Z

.field final do_newline:Z

.field final do_padding:Z

.field private final tail:[B

.field tailLen:I


# direct methods
.method static final constructor <clinit>()V
    .registers 8

    const/16 v7, 0x34

    const/16 v6, 0x33

    const/16 v5, 0x32

    const/16 v4, 0x31

    const/16 v3, 0x30

    const/16 v0, 0x40

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x41

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x42

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x43

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x44

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x45

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x46

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x47

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x48

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x49

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x4a

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x4b

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x4c

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x4d

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x4e

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x4f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x50

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x51

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x52

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x53

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x54

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x55

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x56

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x57

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x58

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x59

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x5a

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x61

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x62

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x63

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x64

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x65

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x66

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x67

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x68

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x69

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x6a

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x6b

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x6c

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x6d

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x6e

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x6f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x70

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x71

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x72

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x73

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x74

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x75

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x76

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    const/16 v1, 0x78

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    const/16 v1, 0x79

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    const/16 v1, 0x7a

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    int-to-byte v1, v3

    aput-byte v1, v0, v7

    const/16 v1, 0x35

    int-to-byte v2, v4

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    int-to-byte v2, v5

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    int-to-byte v2, v6

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    int-to-byte v2, v7

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x35

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x36

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x37

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x38

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x39

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x2b

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x2f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    sput-object v0, Lcom/github/megatronking/stringfog/Base64$Encoder;->ENCODE:[B

    const/16 v0, 0x40

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x41

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x42

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x43

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x44

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x45

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x46

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x47

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x48

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x49

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x4a

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x4b

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x4c

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x4d

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x4e

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x4f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x50

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x51

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x52

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x53

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x54

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x55

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x56

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x57

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x58

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x59

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x5a

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x61

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x62

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x63

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x64

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x65

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x66

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x67

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x68

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x69

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x6a

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x6b

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x6c

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x6d

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x6e

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x6f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x70

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x71

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x72

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x73

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x74

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x75

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x76

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    const/16 v1, 0x78

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    const/16 v1, 0x79

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    const/16 v1, 0x7a

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    int-to-byte v1, v3

    aput-byte v1, v0, v7

    const/16 v1, 0x35

    int-to-byte v2, v4

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    int-to-byte v2, v5

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    int-to-byte v2, v6

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    int-to-byte v2, v7

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x35

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x36

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x37

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x38

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x39

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x2d

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x5f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    sput-object v0, Lcom/github/megatronking/stringfog/Base64$Encoder;->ENCODE_WEBSAFE:[B

    return-void
.end method

.method constructor <init>(I[B)V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/github/megatronking/stringfog/Base64$Coder;-><init>()V

    iput-object p2, p0, Lcom/github/megatronking/stringfog/Base64$Coder;->output:[B

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->do_padding:Z

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->do_newline:Z

    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->do_cr:Z

    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_3

    sget-object v0, Lcom/github/megatronking/stringfog/Base64$Encoder;->ENCODE:[B

    :goto_2
    iput-object v0, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->alphabet:[B

    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tail:[B

    iput v1, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tailLen:I

    iget-boolean v0, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->do_newline:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x13

    :goto_3
    iput v0, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->count:I

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/github/megatronking/stringfog/Base64$Encoder;->ENCODE_WEBSAFE:[B

    goto :goto_2

    :cond_4
    const/4 v0, -0x1

    goto :goto_3
.end method


# virtual methods
.method public maxOutputSize(I)I
    .registers 3

    mul-int/lit8 v0, p1, 0x8

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public process([BIIZ)Z
    .registers 14

    iget-object v6, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->alphabet:[B

    iget-object v7, p0, Lcom/github/megatronking/stringfog/Base64$Coder;->output:[B

    iget v1, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->count:I

    add-int v8, p3, p2

    const/4 v0, -0x1

    iget v2, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tailLen:I

    packed-switch v2, :pswitch_data_0

    move v2, v0

    move v4, p2

    :goto_0
    const/4 v0, -0x1

    if-eq v2, v0, :cond_13

    const/4 v0, 0x0

    shr-int/lit8 v3, v2, 0x12

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v6, v3

    aput-byte v3, v7, v0

    const/4 v0, 0x1

    shr-int/lit8 v3, v2, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v6, v3

    aput-byte v3, v7, v0

    const/4 v0, 0x2

    shr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v6, v3

    aput-byte v3, v7, v0

    const/4 v0, 0x4

    const/4 v3, 0x3

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v6, v2

    aput-byte v2, v7, v3

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_15

    iget-boolean v0, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->do_cr:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/16 v2, 0xd

    int-to-byte v2, v2

    aput-byte v2, v7, v1

    :goto_1
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v7, v0

    const/16 v2, 0x13

    move v0, v1

    :goto_2
    move v5, v2

    move v3, v0

    :goto_3
    add-int/lit8 v0, v4, 0x3

    if-le v0, v8, :cond_5

    if-eqz p4, :cond_d

    iget v0, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tailLen:I

    sub-int v0, v4, v0

    add-int/lit8 v1, v8, -0x1

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tailLen:I

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tail:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    aget-byte v0, v0, v2

    :goto_4
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v2, v0, 0x4

    iget v0, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tailLen:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tailLen:I

    add-int/lit8 v1, v3, 0x1

    shr-int/lit8 v0, v2, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v6, v0

    aput-byte v0, v7, v3

    add-int/lit8 v0, v1, 0x1

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v6, v2

    aput-byte v2, v7, v1

    iget-boolean v1, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->do_padding:Z

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x3d

    int-to-byte v2, v2

    aput-byte v2, v7, v0

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x3d

    int-to-byte v2, v2

    aput-byte v2, v7, v1

    :cond_0
    iget-boolean v1, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->do_newline:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->do_cr:Z

    if-eqz v1, :cond_1

    const/16 v1, 0xd

    int-to-byte v1, v1

    aput-byte v1, v7, v0

    add-int/lit8 v0, v0, 0x1

    :cond_1
    const/16 v1, 0xa

    int-to-byte v1, v1

    aput-byte v1, v7, v0

    add-int/lit8 v0, v0, 0x1

    :cond_2
    :goto_5
    iput v0, p0, Lcom/github/megatronking/stringfog/Base64$Coder;->op:I

    iput v5, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->count:I

    const/4 v0, 0x1

    return v0

    :pswitch_0
    move v2, v0

    move v4, p2

    goto/16 :goto_0

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    if-gt v2, v8, :cond_3

    iget-object v0, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tail:[B

    const/4 v2, 0x0

    aget-byte v0, v0, v2

    add-int/lit8 v2, p2, 0x1

    aget-byte v3, p1, p2

    add-int/lit8 p2, v2, 0x1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    const/4 v2, 0x0

    iput v2, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tailLen:I

    :cond_3
    move v2, v0

    move v4, p2

    goto/16 :goto_0

    :pswitch_2
    add-int/lit8 v2, p2, 0x1

    if-gt v2, v8, :cond_4

    iget-object v0, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tail:[B

    const/4 v2, 0x0

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    iget-object v2, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tail:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    const/4 v2, 0x0

    iput v2, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tailLen:I

    add-int/lit8 p2, p2, 0x1

    :cond_4
    move v2, v0

    move v4, p2

    goto/16 :goto_0

    :cond_5
    aget-byte v0, p1, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, v4, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, v4, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x12

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v6, v1

    aput-byte v1, v7, v3

    add-int/lit8 v1, v3, 0x1

    shr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v6, v2

    aput-byte v2, v7, v1

    add-int/lit8 v1, v3, 0x2

    shr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v6, v2

    aput-byte v2, v7, v1

    add-int/lit8 v1, v3, 0x3

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v6, v0

    aput-byte v0, v7, v1

    add-int/lit8 v4, v4, 0x3

    add-int/lit8 v1, v3, 0x4

    add-int/lit8 v2, v5, -0x1

    if-nez v2, :cond_11

    iget-boolean v0, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->do_cr:Z

    if-eqz v0, :cond_10

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0xd

    int-to-byte v2, v2

    aput-byte v2, v7, v1

    :goto_6
    const/16 v1, 0xa

    int-to-byte v1, v1

    aput-byte v1, v7, v0

    const/16 v2, 0x13

    add-int/lit8 v3, v0, 0x1

    move v5, v2

    goto/16 :goto_3

    :cond_6
    aget-byte v0, p1, v4

    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_7
    iget v0, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tailLen:I

    sub-int v0, v4, v0

    add-int/lit8 v1, v8, -0x2

    if-ne v0, v1, :cond_b

    iget v0, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tailLen:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_9

    iget-object v0, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tail:[B

    const/4 v2, 0x1

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    move v0, v4

    :goto_7
    iget v4, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tailLen:I

    if-lez v4, :cond_a

    iget-object v0, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tail:[B

    aget-byte v0, v0, v2

    add-int/lit8 v2, v2, 0x1

    :goto_8
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0xa

    or-int/2addr v0, v1

    iget v1, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tailLen:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tailLen:I

    add-int/lit8 v1, v3, 0x1

    shr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v6, v2

    aput-byte v2, v7, v3

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v6, v3

    aput-byte v3, v7, v1

    add-int/lit8 v1, v2, 0x1

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v6, v0

    aput-byte v0, v7, v2

    iget-boolean v0, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->do_padding:Z

    if-eqz v0, :cond_f

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x3d

    int-to-byte v2, v2

    aput-byte v2, v7, v1

    :goto_9
    iget-boolean v1, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->do_newline:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->do_cr:Z

    if-eqz v1, :cond_8

    const/16 v1, 0xd

    int-to-byte v1, v1

    aput-byte v1, v7, v0

    add-int/lit8 v0, v0, 0x1

    :cond_8
    const/16 v1, 0xa

    int-to-byte v1, v1

    aput-byte v1, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    :cond_9
    aget-byte v1, p1, v4

    const/4 v2, 0x0

    add-int/lit8 v0, v4, 0x1

    goto :goto_7

    :cond_a
    aget-byte v0, p1, v0

    goto :goto_8

    :cond_b
    iget-boolean v0, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->do_newline:Z

    if-eqz v0, :cond_14

    if-lez v3, :cond_14

    const/16 v0, 0x13

    if-eq v5, v0, :cond_14

    iget-boolean v0, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->do_cr:Z

    if-eqz v0, :cond_c

    add-int/lit8 v0, v3, 0x1

    const/16 v1, 0xd

    int-to-byte v1, v1

    aput-byte v1, v7, v3

    move v3, v0

    :cond_c
    add-int/lit8 v0, v3, 0x1

    const/16 v1, 0xa

    int-to-byte v1, v1

    aput-byte v1, v7, v3

    goto/16 :goto_5

    :cond_d
    add-int/lit8 v0, v8, -0x1

    if-ne v4, v0, :cond_e

    iget-object v0, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tail:[B

    iget v1, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tailLen:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tailLen:I

    aget-byte v2, p1, v4

    aput-byte v2, v0, v1

    move v0, v3

    goto/16 :goto_5

    :cond_e
    add-int/lit8 v0, v8, -0x2

    if-ne v4, v0, :cond_14

    iget-object v0, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tail:[B

    iget v1, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tailLen:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tailLen:I

    aget-byte v2, p1, v4

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tail:[B

    iget v1, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tailLen:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tailLen:I

    add-int/lit8 v2, v4, 0x1

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    move v0, v3

    goto/16 :goto_5

    :cond_f
    move v0, v1

    goto :goto_9

    :cond_10
    move v0, v1

    goto/16 :goto_6

    :cond_11
    move v5, v2

    move v3, v1

    goto/16 :goto_3

    :cond_12
    const/4 v0, 0x4

    goto/16 :goto_1

    :cond_13
    const/4 v0, 0x0

    move v2, v1

    goto/16 :goto_2

    :cond_14
    move v0, v3

    goto/16 :goto_5

    :cond_15
    move v2, v1

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
