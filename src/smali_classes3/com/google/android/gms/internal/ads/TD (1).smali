.class public final Lcom/google/android/gms/internal/ads/TD;
.super Ljava/lang/Object;


# static fields
.field public static final DW:Ljava/lang/String;

.field public static final FH:Ljava/lang/String;

.field public static final Hw:Ljava/lang/String;

.field private static final VH:Ljava/util/regex/Pattern;

.field private static final Zo:Ljava/util/regex/Pattern;

.field private static final gn:Ljava/util/regex/Pattern;

.field public static final j6:I

.field private static final u7:[I

.field public static final v5:Ljava/lang/String;


# direct methods
.method private static $d2j$hex$d9eff1c7$decode_B(Ljava/lang/String;)[B
    .registers 13
    .param p0, "src"  # Ljava/lang/String;

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 43
    .local v0, "d":[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 44
    .local v1, "ret":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    array-length v3, v1

    if-ge v2, v3, :cond_6b

    .line 45
    mul-int/lit8 v3, v2, 0x2

    aget-char v3, v0, v3

    .line 46
    .local v3, "h":C
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-char v4, v0, v4

    .line 48
    .local v4, "l":C
    const/16 v5, 0x46

    const/16 v6, 0x66

    const/16 v7, 0x39

    const/16 v8, 0x41

    const/16 v9, 0x61

    const/16 v10, 0x30

    if-lt v3, v10, :cond_2d

    if-gt v3, v7, :cond_2d

    .line 49
    add-int/lit8 v11, v3, -0x30

    .local v11, "hh":I
    goto :goto_3e

    .line 50
    .end local v11  # "hh":I
    :cond_2d
    if-lt v3, v9, :cond_36

    if-gt v3, v6, :cond_36

    .line 51
    add-int/lit8 v11, v3, -0x61

    add-int/lit8 v11, v11, 0xa

    .restart local v11  # "hh":I
    goto :goto_3e

    .line 52
    .end local v11  # "hh":I
    :cond_36
    if-lt v3, v8, :cond_65

    if-gt v3, v5, :cond_65

    .line 53
    add-int/lit8 v11, v3, -0x41

    add-int/lit8 v11, v11, 0xa

    .line 58
    .restart local v11  # "hh":I
    :goto_3e
    if-lt v4, v10, :cond_45

    if-gt v4, v7, :cond_45

    .line 59
    add-int/lit8 v5, v4, -0x30

    .local v5, "ll":I
    goto :goto_56

    .line 60
    .end local v5  # "ll":I
    :cond_45
    if-lt v4, v9, :cond_4e

    if-gt v4, v6, :cond_4e

    .line 61
    add-int/lit8 v5, v4, -0x61

    add-int/lit8 v5, v5, 0xa

    .restart local v5  # "ll":I
    goto :goto_56

    .line 62
    .end local v5  # "ll":I
    :cond_4e
    if-lt v4, v8, :cond_5f

    if-gt v4, v5, :cond_5f

    .line 63
    add-int/lit8 v5, v4, -0x41

    add-int/lit8 v5, v5, 0xa

    .line 67
    .restart local v5  # "ll":I
    :goto_56
    shl-int/lit8 v6, v11, 0x4

    or-int/2addr v6, v5

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    .line 44
    .end local v3  # "h":C
    .end local v4  # "l":C
    .end local v5  # "ll":I
    .end local v11  # "hh":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 65
    .restart local v3  # "h":C
    .restart local v4  # "l":C
    .restart local v11  # "hh":I
    :cond_5f
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5

    .line 55
    .end local v11  # "hh":I
    :cond_65
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5

    .line 69
    .end local v2  # "i":I
    .end local v3  # "h":C
    .end local v4  # "l":C
    :cond_6b
    return-object v1
.end method

.method private static $d2j$hex$d9eff1c7$decode_I(Ljava/lang/String;)[I
    .registers 5
    .param p0, "src"  # Ljava/lang/String;

    .line 22
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/TD;->$d2j$hex$d9eff1c7$decode_B(Ljava/lang/String;)[B

    move-result-object v0

    .line 23
    .local v0, "d":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 24
    .local v1, "b":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 25
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    .line 26
    .local v2, "s":Ljava/nio/IntBuffer;
    array-length v3, v0

    div-int/lit8 v3, v3, 0x4

    new-array v3, v3, [I

    .line 27
    .local v3, "data":[I
    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 28
    return-object v3
.end method

.method private static $d2j$hex$d9eff1c7$decode_J(Ljava/lang/String;)[J
    .registers 5
    .param p0, "src"  # Ljava/lang/String;

    .line 12
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/TD;->$d2j$hex$d9eff1c7$decode_B(Ljava/lang/String;)[B

    move-result-object v0

    .line 13
    .local v0, "d":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 14
    .local v1, "b":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v2

    .line 16
    .local v2, "s":Ljava/nio/LongBuffer;
    array-length v3, v0

    div-int/lit8 v3, v3, 0x8

    new-array v3, v3, [J

    .line 17
    .local v3, "data":[J
    invoke-virtual {v2, v3}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    .line 18
    return-object v3
.end method

.method private static $d2j$hex$d9eff1c7$decode_S(Ljava/lang/String;)[S
    .registers 5
    .param p0, "src"  # Ljava/lang/String;

    .line 32
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/TD;->$d2j$hex$d9eff1c7$decode_B(Ljava/lang/String;)[B

    move-result-object v0

    .line 33
    .local v0, "d":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 34
    .local v1, "b":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 35
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    .line 36
    .local v2, "s":Ljava/nio/ShortBuffer;
    array-length v3, v0

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [S

    .line 37
    .local v3, "data":[S
    invoke-virtual {v2, v3}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 38
    return-object v3
.end method

.method static constructor <clinit>()V
    .registers 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_14

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_14

    const/16 v0, 0x1a

    goto :goto_16

    :cond_14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    :goto_16
    sput v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v1, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v2, Lcom/google/android/gms/internal/ads/TD;->FH:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v3, Lcom/google/android/gms/internal/ads/TD;->Hw:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x11

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/TD;->v5:Ljava/lang/String;

    const-string v0, "(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/TD;->Zo:Ljava/util/regex/Pattern;

    const-string v0, "^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/TD;->VH:Ljava/util/regex/Pattern;

    const-string v0, "%([A-Fa-f0-9]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/TD;->gn:Ljava/util/regex/Pattern;

    const-string v0, "00000000b71dc1046e3b8209d926430ddc7604136b6bc517b24d861a0550471eb8ed08260ff0c922d6d68a2f61cb4b2b649b0c35d386cd310aa08e3cbdbd4f3870db114cc7c6d0481ee09345a9fd5241acad155f1bb0d45bc2969756758b5652c836196a7f2bd86ea60d9b6311105a6714401d79a35ddc7d7a7b9f70cd665e74e0b6239857abe29c8e8da191399060953cc0278b8bdde68f52fba582e5e66486585b2bbeef46eaba3660a9b7817d68b3842d2fad3330eea9ea16ada45d0b6ca0906d32d42770f3d0fe56b0dd494b71d94c1b36c7fb06f7c32220b4ce953d75ca28803af29f9dfbf646bbb8fbf1a679fff4f63ee143ebffe59acdbce82dd07dec77708634c06d4730194b043dae56c539ab0682271c1b4323c53d002e7220c12acf9d8e1278804f16a1a60c1b16bbcd1f13eb8a01a4f64b057dd00808cacdc90c07ab9778b0b6567c69901571de8dd475dbdd936b6cc0526fb5e6116202fbd066bf469f5e085b5e5ad17d1d576660dc5363309b4dd42d5a490d0b1944ba16d84097c6a5ac20db64a8f9fd27a54ee0e6a14bb0a1bffcad60bb258b23b69296e2b22f2bad8a98366c8e41102f83f60dee87f35da9994440689d9d662b902a7bea94e71db4e0500075e4892636e93e3bf7ed3b6bb0f38c7671f7555032fae24df3fe5ff0bcc6e8ed7dc231cb3ecf86d6ffcb8386b8d5349b79d1edbd3adc5aa0fbd8eee00c6959fdcd6d80db8e6037c64f643296087a858bc97e5cad8a73ebb04b77560d044fe110c54b383686468f2b47428a7b005c3d66c158e4408255535d43519e3b1d252926dc21f0009f2c471d5e28424d1936f550d8322c769b3f9b6b5a3b26d6150391cbd40748ed970afff0560efaa011104dbdd014949b93192386521d0e562ff1b94beef5606dadf8d7706cfcd2202be2653deae6bc1ba9eb0b0668efb6bb27d701a6e6d3d880a5de6f9d64da6acd23c4ddd0e2c004f6a1cdb3eb60c97e8d3ebdc990ffb910b6bcb4a7ab7db0a2fb3aae15e6fbaaccc0b8a77bdd79a3c660369b717df79fa85bb4921f4675961a163288ad0bf38c742db081c330718599908a5d2e8d4b59f7ab085440b6c95045e68e4ef2fb4f4a2bdd0c479cc0cd43217d827b9660437f4f460072f85bc176fd0b86684a16476c93300461242dc565e94b9b115e565a1587701918306dd81c353d9f0282205e065b061d0bec1bdc0f51a69337e6bb52333f9d113e8880d03a8dd097243acd5620e3eb152d54f6d4297926a9c5ce3b68c1171d2bcca000eac8a550add6124d6cd2cb6b2fdf7c76eedbc1cba1e376d660e7aff023ea18ede2ee1dbda5f0aaa064f4738627f9c49be6fd09fdb889bee0798d67c63a80d0dbfb84d58bbc9a62967d9ebbb03e930cadff97b110b0af060d71abdf2b32a66836f3a26d66b4bcda7b75b8035d36b5b440f7b1"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/TD;->$d2j$hex$d9eff1c7$decode_I(Ljava/lang/String;)[I

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/TD;->u7:[I

    return-void
.end method

.method public static DW(I)I
    .registers 3

    if-eqz p0, :cond_1e

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_18

    const/4 v0, 0x3

    const/high16 v1, 0x20000

    if-eq p0, v0, :cond_17

    const/4 v0, 0x4

    if-ne p0, v0, :cond_11

    return v1

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_17
    return v1

    :cond_18
    const/high16 p0, 0xc80000

    return p0

    :cond_1b
    const/high16 p0, 0x360000

    return p0

    :cond_1e
    const/high16 p0, 0x1000000

    return p0
.end method

.method public static DW(II)I
    .registers 5

    const/high16 v0, -0x80000000

    const/4 v1, 0x3

    if-eq p0, v0, :cond_1b

    const/high16 v0, 0x40000000  # 2.0f

    const/4 v2, 0x2

    if-eq p0, v0, :cond_18

    if-eq p0, v2, :cond_15

    if-ne p0, v1, :cond_f

    return p1

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_15
    shl-int/lit8 p0, p1, 0x1

    return p0

    :cond_18
    shl-int/lit8 p0, p1, 0x2

    return p0

    :cond_1b
    mul-int/lit8 p1, p1, 0x3

    return p1
.end method

.method public static DW([JJZZ)I
    .registers 9

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    if-gez v0, :cond_9

    xor-int/lit8 p1, v0, -0x1

    goto :goto_1a

    :cond_9
    add-int/lit8 v0, v0, 0x1

    array-length v1, p0

    if-ge v0, v1, :cond_14

    aget-wide v1, p0, v0

    cmp-long v3, v1, p1

    if-eqz v3, :cond_9

    :cond_14
    if-eqz p3, :cond_19

    add-int/lit8 p1, v0, -0x1

    goto :goto_1a

    :cond_19
    move p1, v0

    :goto_1a
    if-eqz p4, :cond_24

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_24
    return p1
.end method

.method public static DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static FH(Ljava/lang/String;)[B
    .registers 2

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static Hw(Ljava/lang/String;)J
    .registers 21

    sget-object v0, Lcom/google/android/gms/internal/ads/TD;->VH:Ljava/util/regex/Pattern;

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const-wide v3, 0x408f400000000000L  # 1000.0

    const-wide v5, 0x40ac200000000000L  # 3600.0

    if-eqz v2, :cond_9d

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_36

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    const-wide v12, 0x417e1852c0000000L  # 3.1556908E7

    mul-double v10, v10, v12

    goto :goto_37

    :cond_36
    move-wide v10, v8

    :goto_37
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4a

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    const-wide v14, 0x4144103580000000L  # 2629739.0

    mul-double v12, v12, v14

    goto :goto_4b

    :cond_4a
    move-wide v12, v8

    :goto_4b
    const/4 v7, 0x7

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5e

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-wide v16, 0x40f5180000000000L  # 86400.0

    mul-double v14, v14, v16

    goto :goto_5f

    :cond_5e
    move-wide v14, v8

    :goto_5f
    const/16 v7, 0xa

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6e

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    mul-double v16, v16, v5

    goto :goto_70

    :cond_6e
    move-wide/from16 v16, v8

    :goto_70
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_81

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide/high16 v18, 0x404e000000000000L  # 60.0

    mul-double v5, v5, v18

    goto :goto_82

    :cond_81
    move-wide v5, v8

    :goto_82
    const/16 v7, 0xe

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8e

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    :cond_8e
    add-double/2addr v10, v12

    add-double/2addr v10, v14

    add-double v10, v10, v16

    add-double/2addr v10, v5

    add-double/2addr v10, v8

    mul-double v10, v10, v3

    double-to-long v3, v10

    xor-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_9c

    neg-long v3, v3

    :cond_9c
    return-wide v3

    :cond_9d
    invoke-static/range {p0 .. p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    mul-double v0, v0, v5

    mul-double v0, v0, v3

    double-to-long v0, v0

    return-wide v0
.end method

.method public static VH(Ljava/lang/String;)[B
    .registers 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_2a

    shl-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    add-int/2addr v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_2a
    return-object v1
.end method

.method public static Zo(Ljava/lang/String;)I
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-gt v0, v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/CD;->j6(Z)V

    const/4 v1, 0x0

    :goto_f
    if-ge v2, v0, :cond_1b

    shl-int/lit8 v1, v1, 0x8

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    or-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1b
    return v1
.end method

.method public static j6(FFF)F
    .registers 3

    const/high16 p1, 0x41000000  # 8.0f

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const p1, 0x3dcccccd  # 0.1f

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static j6(I)I
    .registers 2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x10

    if-eq p0, v0, :cond_18

    const/16 v0, 0x18

    if-eq p0, v0, :cond_15

    const/16 v0, 0x20

    if-eq p0, v0, :cond_12

    const/4 p0, 0x0

    return p0

    :cond_12
    const/high16 p0, 0x40000000  # 2.0f

    return p0

    :cond_15
    const/high16 p0, -0x80000000

    return p0

    :cond_18
    const/4 p0, 0x2

    return p0

    :cond_1a
    const/4 p0, 0x3

    return p0
.end method

.method public static j6(II)I
    .registers 2

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    div-int/2addr p0, p1

    return p0
.end method

.method public static j6(III)I
    .registers 3

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static j6([JJZZ)I
    .registers 8

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p3

    if-gez p3, :cond_a

    add-int/lit8 p3, p3, 0x2

    neg-int p0, p3

    goto :goto_16

    :cond_a
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_14

    aget-wide v0, p0, p3

    cmp-long v2, v0, p1

    if-eqz v2, :cond_a

    :cond_14
    add-int/lit8 p0, p3, 0x1

    :goto_16
    if-eqz p4, :cond_1d

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_1d
    return p0
.end method

.method public static j6(JJ)J
    .registers 6

    add-long/2addr p0, p2

    const-wide/16 v0, 0x1

    sub-long/2addr p0, v0

    div-long/2addr p0, p2

    return-wide p0
.end method

.method public static j6(JJJ)J
    .registers 11

    const-wide/16 v0, 0x0

    cmp-long v2, p4, p2

    if-ltz v2, :cond_f

    rem-long v2, p4, p2

    cmp-long v4, v2, v0

    if-nez v4, :cond_f

    div-long/2addr p4, p2

    div-long/2addr p0, p4

    return-wide p0

    :cond_f
    cmp-long v2, p4, p2

    if-gez v2, :cond_1d

    rem-long v2, p2, p4

    cmp-long v4, v2, v0

    if-nez v4, :cond_1d

    div-long/2addr p2, p4

    mul-long p0, p0, p2

    return-wide p0

    :cond_1d
    long-to-double p2, p2

    long-to-double p4, p4

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p4, p5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p4, p5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p2, p4

    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p0, p0, p2

    double-to-long p0, p0

    return-wide p0
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/mD;I)Lcom/google/android/gms/internal/ads/mD;
    .registers 14

    if-nez p1, :cond_3

    return-object p0

    :cond_3
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/mD;->v5:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    goto :goto_f

    :cond_c
    int-to-long v2, p1

    sub-long v2, v0, v2

    :goto_f
    move-wide v8, v2

    new-instance v0, Lcom/google/android/gms/internal/ads/mD;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/mD;->j6:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/mD;->Hw:J

    int-to-long v3, p1

    add-long v6, v1, v3

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/mD;->Zo:Ljava/lang/String;

    iget v11, p0, Lcom/google/android/gms/internal/ads/mD;->VH:I

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/google/android/gms/internal/ads/mD;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    return-object v0
.end method

.method public static j6([Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_23

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_20

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/UD;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/UD;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/iD;)V
    .registers 1

    if-eqz p0, :cond_7

    :try_start_2
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/iD;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    move-exception p0

    :cond_7
    :goto_7
    return-void
.end method

.method public static j6(Ljava/io/Closeable;)V
    .registers 1

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_5

    :catch_4
    move-exception p0

    :goto_5
    return-void
.end method

.method public static j6([JJJ)V
    .registers 11

    const-wide/16 p1, 0x0

    const/4 v0, 0x0

    const-wide/32 v1, 0xf4240

    cmp-long v3, p3, v1

    if-ltz v3, :cond_1d

    rem-long v3, p3, v1

    cmp-long v5, v3, p1

    if-nez v5, :cond_1d

    div-long/2addr p3, v1

    :goto_11
    array-length p1, p0

    if-ge v0, p1, :cond_1c

    aget-wide p1, p0, v0

    div-long/2addr p1, p3

    aput-wide p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_1c
    return-void

    :cond_1d
    cmp-long v3, p3, v1

    if-gez v3, :cond_35

    rem-long v3, v1, p3

    cmp-long v5, v3, p1

    if-nez v5, :cond_35

    div-long/2addr v1, p3

    :goto_28
    array-length p1, p0

    if-ge v0, p1, :cond_34

    aget-wide p1, p0, v0

    mul-long p1, p1, v1

    aput-wide p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_34
    return-void

    :cond_35
    long-to-double p1, p3

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    const-wide p3, 0x412e848000000000L  # 1000000.0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p3, p1

    :goto_42
    array-length p1, p0

    if-ge v0, p1, :cond_56

    aget-wide p1, p0, v0

    long-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, p3

    double-to-long p1, p1

    aput-wide p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    :cond_56
    return-void
.end method

.method public static j6(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static v5(Ljava/lang/String;)J
    .registers 11

    sget-object v0, Lcom/google/android/gms/internal/ads/TD;->Zo:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_28

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Invalid date/time format: "

    if-eqz v0, :cond_1d

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_22

    :cond_1d
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_22
    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    const/16 p0, 0x9

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_31

    goto :goto_3d

    :cond_31
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Z"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3f

    :goto_3d
    const/4 p0, 0x0

    goto :goto_65

    :cond_3f
    const/16 p0, 0xc

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x3c

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr p0, v1

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    neg-int p0, p0

    :cond_65
    :goto_65
    new-instance v8, Ljava/util/GregorianCalendar;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {v8}, Ljava/util/Calendar;->clear()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v3, v1

    const/4 v9, 0x3

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move-object v1, v8

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e6

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "0."

    if-eqz v1, :cond_cf

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d4

    :cond_cf
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_d4
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    const/16 v1, 0xe

    invoke-virtual {v8, v1, v0}, Ljava/util/Calendar;->set(II)V

    :cond_e6
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    if-eqz p0, :cond_f3

    const v2, 0xea60

    mul-int p0, p0, v2

    int-to-long v2, p0

    sub-long/2addr v0, v2

    :cond_f3
    return-wide v0
.end method
