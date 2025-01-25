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

    if-eqz v0, :cond_34

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->do_padding:Z

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_36

    move v0, v1

    :goto_13
    iput-boolean v0, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->do_newline:Z

    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_1a

    move v2, v1

    :cond_1a
    iput-boolean v2, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->do_cr:Z

    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_38

    sget-object v0, Lcom/github/megatronking/stringfog/Base64$Encoder;->ENCODE:[B

    :goto_22
    iput-object v0, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->alphabet:[B

    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tail:[B

    iput v1, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tailLen:I

    iget-boolean v0, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->do_newline:Z

    if-eqz v0, :cond_3b

    const/16 v0, 0x13

    :goto_31
    iput v0, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->count:I

    return-void

    :cond_34
    move v0, v2

    goto :goto_c

    :cond_36
    move v0, v2

    goto :goto_13

    :cond_38
    sget-object v0, Lcom/github/megatronking/stringfog/Base64$Encoder;->ENCODE_WEBSAFE:[B

    goto :goto_22

    :cond_3b
    const/4 v0, -0x1

    goto :goto_31
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

    packed-switch v2, :pswitch_data_238

    move v4, p2

    :goto_f
    const/4 v2, -0x1

    if-eq v0, v2, :cond_22e

    const/4 v2, 0x0

    shr-int/lit8 v3, v0, 0x12

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v6, v3

    aput-byte v3, v7, v2

    const/4 v2, 0x1

    shr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v6, v3

    aput-byte v3, v7, v2

    const/4 v2, 0x2

    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v6, v3

    aput-byte v3, v7, v2

    const/4 v2, 0x4

    const/4 v3, 0x3

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v6, v0

    aput-byte v0, v7, v3

    add-int/lit8 v0, v1, -0x1

    if-nez v0, :cond_235

    iget-boolean v0, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->do_cr:Z

    if-eqz v0, :cond_22b

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/16 v2, 0xd

    int-to-byte v2, v2

    aput-byte v2, v7, v1

    :goto_44
    add-int/lit8 v2, v0, 0x1

    const/16 v1, 0xa

    int-to-byte v1, v1

    aput-byte v1, v7, v0

    const/16 v0, 0x13

    move v1, v0

    :goto_4e
    move v0, v4

    move v5, v1

    move v3, v2

    :goto_51
    add-int/lit8 v1, v0, 0x3

    if-le v1, v8, :cond_fc

    if-eqz p4, :cond_1ed

    iget v1, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tailLen:I

    sub-int v1, v0, v1

    add-int/lit8 v2, v8, -0x1

    if-ne v1, v2, :cond_15b

    iget v1, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tailLen:I

    if-lez v1, :cond_156

    iget-object v0, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tail:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    aget-byte v0, v0, v2

    :goto_69
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

    if-eqz v1, :cond_96

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x3d

    int-to-byte v2, v2

    aput-byte v2, v7, v0

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x3d

    int-to-byte v2, v2

    aput-byte v2, v7, v1

    :cond_96
    iget-boolean v1, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->do_newline:Z

    if-eqz v1, :cond_ac

    iget-boolean v1, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->do_cr:Z

    if-eqz v1, :cond_a5

    const/16 v1, 0xd

    int-to-byte v1, v1

    aput-byte v1, v7, v0

    add-int/lit8 v0, v0, 0x1

    :cond_a5
    const/16 v1, 0xa

    int-to-byte v1, v1

    aput-byte v1, v7, v0

    add-int/lit8 v0, v0, 0x1

    :cond_ac
    :goto_ac
    iput v0, p0, Lcom/github/megatronking/stringfog/Base64$Coder;->op:I

    iput v5, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->count:I

    const/4 v0, 0x1

    return v0

    :pswitch_b2  #0x0
    move v4, p2

    goto/16 :goto_f

    :pswitch_b5  #0x1
    add-int/lit8 v2, p2, 0x2

    if-gt v2, v8, :cond_d5

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

    :cond_d5
    move v4, p2

    goto/16 :goto_f

    :pswitch_d8  #0x2
    add-int/lit8 v2, p2, 0x1

    if-gt v2, v8, :cond_f9

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

    :cond_f9
    move v4, p2

    goto/16 :goto_f

    :cond_fc
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    shr-int/lit8 v2, v1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v6, v2

    aput-byte v2, v7, v3

    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v4, v1, 0xc

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v6, v4

    aput-byte v4, v7, v2

    add-int/lit8 v2, v3, 0x2

    shr-int/lit8 v4, v1, 0x6

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v6, v4

    aput-byte v4, v7, v2

    add-int/lit8 v2, v3, 0x3

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v6, v1

    aput-byte v1, v7, v2

    add-int/lit8 v2, v0, 0x3

    add-int/lit8 v1, v3, 0x4

    add-int/lit8 v4, v5, -0x1

    if-nez v4, :cond_226

    iget-boolean v0, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->do_cr:Z

    if-eqz v0, :cond_223

    add-int/lit8 v0, v1, 0x1

    const/16 v3, 0xd

    int-to-byte v3, v3

    aput-byte v3, v7, v1

    :goto_149
    const/16 v1, 0xa

    int-to-byte v1, v1

    aput-byte v1, v7, v0

    const/16 v1, 0x13

    add-int/lit8 v3, v0, 0x1

    move v0, v2

    move v5, v1

    goto/16 :goto_51

    :cond_156
    aget-byte v0, p1, v0

    const/4 v1, 0x0

    goto/16 :goto_69

    :cond_15b
    iget v1, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tailLen:I

    sub-int v1, v0, v1

    add-int/lit8 v2, v8, -0x2

    if-ne v1, v2, :cond_1ce

    iget v1, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tailLen:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1c5

    iget-object v1, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tail:[B

    const/4 v2, 0x1

    const/4 v4, 0x0

    aget-byte v1, v1, v4

    :goto_16e
    iget v4, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tailLen:I

    if-lez v4, :cond_1cb

    iget-object v0, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tail:[B

    aget-byte v0, v0, v2

    add-int/lit8 v2, v2, 0x1

    :goto_178
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

    if-eqz v0, :cond_221

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x3d

    int-to-byte v2, v2

    aput-byte v2, v7, v1

    :goto_1ad
    iget-boolean v1, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->do_newline:Z

    if-eqz v1, :cond_ac

    iget-boolean v1, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->do_cr:Z

    if-eqz v1, :cond_1bc

    const/16 v1, 0xd

    int-to-byte v1, v1

    aput-byte v1, v7, v0

    add-int/lit8 v0, v0, 0x1

    :cond_1bc
    const/16 v1, 0xa

    int-to-byte v1, v1

    aput-byte v1, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_ac

    :cond_1c5
    aget-byte v1, p1, v0

    const/4 v2, 0x0

    add-int/lit8 v0, v0, 0x1

    goto :goto_16e

    :cond_1cb
    aget-byte v0, p1, v0

    goto :goto_178

    :cond_1ce
    iget-boolean v0, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->do_newline:Z

    if-eqz v0, :cond_232

    if-lez v3, :cond_232

    const/16 v0, 0x13

    if-eq v5, v0, :cond_232

    iget-boolean v0, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->do_cr:Z

    if-eqz v0, :cond_1e4

    add-int/lit8 v0, v3, 0x1

    const/16 v1, 0xd

    int-to-byte v1, v1

    aput-byte v1, v7, v3

    move v3, v0

    :cond_1e4
    add-int/lit8 v0, v3, 0x1

    const/16 v1, 0xa

    int-to-byte v1, v1

    aput-byte v1, v7, v3

    goto/16 :goto_ac

    :cond_1ed
    add-int/lit8 v1, v8, -0x1

    if-ne v0, v1, :cond_200

    iget-object v1, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tail:[B

    iget v2, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tailLen:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tailLen:I

    aget-byte v0, p1, v0

    aput-byte v0, v1, v2

    move v0, v3

    goto/16 :goto_ac

    :cond_200
    add-int/lit8 v1, v8, -0x2

    if-ne v0, v1, :cond_232

    iget-object v1, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tail:[B

    iget v2, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tailLen:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tailLen:I

    aget-byte v4, p1, v0

    aput-byte v4, v1, v2

    iget-object v1, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tail:[B

    iget v2, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tailLen:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/github/megatronking/stringfog/Base64$Encoder;->tailLen:I

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, p1, v0

    aput-byte v0, v1, v2

    move v0, v3

    goto/16 :goto_ac

    :cond_221
    move v0, v1

    goto :goto_1ad

    :cond_223
    move v0, v1

    goto/16 :goto_149

    :cond_226
    move v0, v2

    move v5, v4

    move v3, v1

    goto/16 :goto_51

    :cond_22b
    const/4 v0, 0x4

    goto/16 :goto_44

    :cond_22e
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_4e

    :cond_232
    move v0, v3

    goto/16 :goto_ac

    :cond_235
    move v1, v0

    goto/16 :goto_4e

    :pswitch_data_238
    .packed-switch 0x0
        :pswitch_b2  #00000000
        :pswitch_b5  #00000001
        :pswitch_d8  #00000002
    .end packed-switch
.end method
