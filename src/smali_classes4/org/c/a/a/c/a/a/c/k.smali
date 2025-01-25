.class public Lorg/c/a/a/c/a/a/c/k;
.super Ljava/lang/Object;


# static fields
.field protected static final a:Lorg/c/a/a/c/a/a/a/a/a;

.field protected static final b:Lorg/c/a/a/c/a/a/c/l;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    sput-object v0, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    new-instance v0, Lorg/c/a/a/c/a/a/c/l;

    invoke-direct {v0}, Lorg/c/a/a/c/a/a/c/l;-><init>()V

    sput-object v0, Lorg/c/a/a/c/a/a/c/k;->b:Lorg/c/a/a/c/a/a/c/l;

    return-void
.end method

.method public static a(Lorg/c/a/a/b/a/d;)Lorg/c/a/a/c/a/a/a/a/f;
    .registers 27

    const-string v3, "Code"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/c/a/a/b/a/d;->a(Ljava/lang/String;)Lorg/c/a/a/b/a/a/c;

    move-result-object v3

    check-cast v3, Lorg/c/a/a/b/a/a/f;

    if-nez v3, :cond_e

    const/4 v3, 0x0

    :goto_d
    return-object v3

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lorg/c/a/a/b/a/d;->d()Lorg/c/a/a/b/a/b;

    move-result-object v9

    invoke-virtual {v3}, Lorg/c/a/a/b/a/a/f;->a()[B

    move-result-object v10

    array-length v11, v10

    new-array v12, v11, [Lorg/c/a/a/c/a/a/a/a/a;

    new-array v13, v11, [C

    new-array v14, v11, [I

    new-array v15, v11, [I

    new-array v0, v11, [[I

    move-object/from16 v16, v0

    new-array v0, v11, [[I

    move-object/from16 v17, v0

    const/4 v4, 0x0

    sget-object v5, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v5, v12, v4

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move v8, v4

    :goto_30
    if-lt v6, v11, :cond_cd

    aput v11, v14, v8

    invoke-virtual {v3}, Lorg/c/a/a/b/a/a/f;->b()[Lorg/c/a/a/b/a/a/w;

    move-result-object v7

    if-eqz v7, :cond_3e

    array-length v5, v7

    const/4 v4, 0x0

    :goto_3c
    if-lt v4, v5, :cond_52f

    :cond_3e
    new-instance v4, Lorg/c/a/a/c/a/a/a/a/f;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/c/a/a/c/a/a/a/a/f;-><init>(Lorg/c/a/a/b/a/d;)V

    const-string v5, "LineNumberTable"

    invoke-virtual {v3, v5}, Lorg/c/a/a/b/a/a/f;->a(Ljava/lang/String;)Lorg/c/a/a/b/a/a/c;

    move-result-object v3

    check-cast v3, Lorg/c/a/a/b/a/a/k;

    if-eqz v3, :cond_6e

    invoke-virtual {v3}, Lorg/c/a/a/b/a/a/k;->a()[Lorg/c/a/a/b/a/a/ag;

    move-result-object v8

    new-array v0, v11, [I

    move-object/from16 v18, v0

    const/4 v3, 0x0

    aget-object v3, v8, v3

    invoke-virtual {v3}, Lorg/c/a/a/b/a/a/ag;->b()I

    move-result v6

    array-length v0, v8

    move/from16 v19, v0

    const/4 v3, 0x0

    const/4 v5, 0x1

    :goto_63
    move/from16 v0, v19

    if-lt v5, v0, :cond_545

    :goto_67
    if-lt v3, v11, :cond_568

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/c/a/a/c/a/a/a/a/f;->a([I)V

    :cond_6e
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v8}, Lorg/c/a/a/c/a/a/a/a/f;->a(III)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v6

    const/4 v5, 0x0

    aget v5, v14, v5

    :goto_79
    if-lt v5, v11, :cond_56e

    invoke-virtual {v4, v3, v11}, Lorg/c/a/a/c/a/a/a/a/f;->a(II)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v5

    aput-object v5, v12, v3

    invoke-virtual {v4}, Lorg/c/a/a/c/a/a/a/a/f;->b()Lorg/c/a/a/d/c;

    move-result-object v8

    new-instance v11, Lorg/c/a/a/d/c;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v11, v3}, Lorg/c/a/a/d/c;-><init>(I)V

    const/4 v3, 0x1

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v6, v3}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    const/4 v3, 0x1

    move v5, v3

    :goto_a5
    if-lt v5, v14, :cond_57d

    if-eqz v7, :cond_c0

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/c/a/a/b/a/d;->d()Lorg/c/a/a/b/a/b;

    move-result-object v14

    sget-object v3, Lorg/c/a/a/c/a/a/c/k;->b:Lorg/c/a/a/c/a/a/c/l;

    invoke-static {v7, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v0, v7

    move/from16 v16, v0

    const/4 v3, 0x0

    move v6, v3

    :goto_bc
    move/from16 v0, v16

    if-lt v6, v0, :cond_6c4

    :cond_c0
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c4
    :goto_c4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_764

    move-object v3, v4

    goto/16 :goto_d

    :cond_cd
    aput v6, v14, v8

    aget-byte v4, v10, v6

    and-int/lit16 v4, v4, 0xff

    packed-switch v4, :pswitch_data_80c

    :pswitch_d6  #0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2a, 0x2b, 0x2c, 0x2d, 0x2e, 0x2f, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x59, 0x5a, 0x5b, 0x5c, 0x5d, 0x5e, 0x5f, 0x60, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a, 0x7b, 0x7c, 0x7d, 0x7e, 0x7f, 0x80, 0x81, 0x82, 0x83, 0x85, 0x86, 0x87, 0x88, 0x89, 0x8a, 0x8b, 0x8c, 0x8d, 0x8e, 0x8f, 0x90, 0x91, 0x92, 0x93, 0x94, 0x95, 0x96, 0x97, 0x98, 0xbe
    move v4, v5

    move v8, v6

    :goto_d8
    add-int/lit8 v7, v8, 0x1

    move v5, v4

    move v8, v6

    move v6, v7

    goto/16 :goto_30

    :pswitch_df  #0x10, 0x12, 0x15, 0x16, 0x17, 0x18, 0x19, 0xbc
    add-int/lit8 v7, v6, 0x1

    move v4, v5

    move v8, v7

    goto :goto_d8

    :pswitch_e4  #0x36, 0x37, 0x38, 0x39, 0x3a
    add-int/lit8 v5, v6, 0x1

    move v4, v5

    move v8, v5

    goto :goto_d8

    :pswitch_e9  #0x3b, 0x3c, 0x3d, 0x3e, 0x3f, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0xc2, 0xc3
    move v4, v6

    move v8, v6

    goto :goto_d8

    :pswitch_ec  #0xa9
    add-int/lit8 v5, v6, 0x1

    const/16 v4, 0x52

    aput-char v4, v13, v5

    add-int/lit8 v4, v5, 0x1

    if-ge v4, v11, :cond_fc

    add-int/lit8 v4, v5, 0x1

    sget-object v7, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v7, v12, v4

    :cond_fc
    move v4, v5

    move v8, v5

    goto :goto_d8

    :pswitch_ff  #0xb3, 0xb5
    add-int/lit8 v5, v6, 0x2

    move v4, v5

    move v8, v5

    goto :goto_d8

    :pswitch_104  #0xb6, 0xb7, 0xb8
    add-int/lit8 v4, v6, 0x1

    aget-byte v8, v10, v4

    add-int/lit8 v7, v4, 0x1

    aget-byte v4, v10, v7

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v4, v8

    invoke-virtual {v9, v4}, Lorg/c/a/a/b/a/b;->a(I)Lorg/c/a/a/b/a/b/a;

    move-result-object v4

    check-cast v4, Lorg/c/a/a/b/a/b/g;

    invoke-virtual {v4}, Lorg/c/a/a/b/a/b/g;->c()I

    move-result v4

    invoke-virtual {v9, v4}, Lorg/c/a/a/b/a/b;->a(I)Lorg/c/a/a/b/a/b/a;

    move-result-object v4

    check-cast v4, Lorg/c/a/a/b/a/b/j;

    invoke-virtual {v4}, Lorg/c/a/a/b/a/b/j;->c()I

    move-result v4

    invoke-virtual {v9, v4}, Lorg/c/a/a/b/a/b;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v8, 0x56

    if-ne v4, v8, :cond_804

    move v4, v7

    move v8, v7

    goto :goto_d8

    :pswitch_13c  #0xb9, 0xba
    add-int/lit8 v4, v6, 0x1

    aget-byte v7, v10, v4

    add-int/lit8 v8, v4, 0x1

    aget-byte v4, v10, v8

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v4, v7

    invoke-virtual {v9, v4}, Lorg/c/a/a/b/a/b;->a(I)Lorg/c/a/a/b/a/b/a;

    move-result-object v4

    check-cast v4, Lorg/c/a/a/b/a/b/g;

    invoke-virtual {v4}, Lorg/c/a/a/b/a/b/g;->c()I

    move-result v4

    invoke-virtual {v9, v4}, Lorg/c/a/a/b/a/b;->a(I)Lorg/c/a/a/b/a/b/a;

    move-result-object v4

    check-cast v4, Lorg/c/a/a/b/a/b/j;

    invoke-virtual {v4}, Lorg/c/a/a/b/a/b/j;->c()I

    move-result v4

    invoke-virtual {v9, v4}, Lorg/c/a/a/b/a/b;->d(I)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v7, v8, 0x2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v8, 0x56

    if-ne v4, v8, :cond_808

    move v4, v7

    move v8, v7

    goto/16 :goto_d8

    :pswitch_177  #0x84
    add-int/lit8 v7, v6, 0x2

    add-int/lit8 v4, v5, 0x3

    if-ne v4, v7, :cond_808

    add-int/lit8 v4, v7, -0x1

    aget-byte v4, v10, v4

    and-int/lit16 v4, v4, 0xff

    invoke-static {v10, v7, v4}, Lorg/c/a/a/c/a/a/c/k;->a([BII)Z

    move-result v4

    if-nez v4, :cond_808

    move v4, v7

    move v8, v7

    goto/16 :goto_d8

    :pswitch_18d  #0x11, 0x13, 0x14, 0xb2, 0xb4, 0xbb, 0xbd, 0xc0, 0xc1
    add-int/lit8 v7, v6, 0x2

    move v4, v5

    move v8, v7

    goto/16 :goto_d8

    :pswitch_193  #0xa7
    add-int/lit8 v4, v5, 0x1

    if-ne v4, v6, :cond_1cb

    const/16 v4, 0x67

    :goto_199
    const/4 v7, -0x1

    if-eq v5, v7, :cond_1a2

    add-int/lit8 v5, v5, 0x1

    sget-object v7, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v7, v12, v5

    :cond_1a2
    aput-char v4, v13, v6

    add-int/lit8 v5, v6, 0x1

    aget-byte v7, v10, v5

    add-int/lit8 v5, v5, 0x1

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    aget-byte v8, v10, v5

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    int-to-short v7, v7

    add-int/2addr v7, v6

    sget-object v8, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v8, v12, v7

    aput-char v4, v13, v5

    aput v7, v15, v5

    add-int/lit8 v4, v5, 0x1

    if-ge v4, v11, :cond_1c7

    add-int/lit8 v4, v5, 0x1

    sget-object v7, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v7, v12, v4

    :cond_1c7
    move v4, v5

    move v8, v5

    goto/16 :goto_d8

    :cond_1cb
    const/16 v4, 0x47

    goto :goto_199

    :pswitch_1ce  #0xa8
    const/4 v4, -0x1

    if-eq v5, v4, :cond_1d7

    add-int/lit8 v4, v5, 0x1

    sget-object v5, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v5, v12, v4

    :cond_1d7
    const/16 v4, 0x6a

    aput-char v4, v13, v6

    add-int/lit8 v4, v6, 0x1

    aget-byte v7, v10, v4

    add-int/lit8 v5, v4, 0x1

    and-int/lit16 v4, v7, 0xff

    shl-int/lit8 v4, v4, 0x8

    aget-byte v7, v10, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v4, v7

    int-to-short v4, v4

    add-int/2addr v4, v6

    sget-object v7, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v7, v12, v4

    const/16 v7, 0x6a

    aput-char v7, v13, v5

    aput v4, v15, v5

    add-int/lit8 v4, v5, 0x1

    if-ge v4, v11, :cond_200

    add-int/lit8 v4, v5, 0x1

    sget-object v7, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v7, v12, v4

    :cond_200
    move v4, v5

    move v8, v5

    goto/16 :goto_d8

    :pswitch_204  #0x99, 0x9a, 0x9b, 0x9c, 0x9d, 0x9e, 0x9f, 0xa0, 0xa1, 0xa2, 0xa3, 0xa4, 0xa5, 0xa6, 0xc6, 0xc7
    const/4 v4, -0x1

    if-eq v5, v4, :cond_20d

    add-int/lit8 v4, v5, 0x1

    sget-object v5, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v5, v12, v4

    :cond_20d
    add-int/lit8 v4, v6, 0x1

    aget-byte v7, v10, v4

    add-int/lit8 v5, v4, 0x1

    and-int/lit16 v4, v7, 0xff

    shl-int/lit8 v4, v4, 0x8

    aget-byte v7, v10, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v4, v7

    int-to-short v4, v4

    add-int/2addr v4, v6

    sget-object v7, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v7, v12, v4

    const/16 v7, 0x63

    aput-char v7, v13, v5

    aput v4, v15, v5

    add-int/lit8 v4, v5, 0x1

    if-ge v4, v11, :cond_232

    add-int/lit8 v4, v5, 0x1

    sget-object v7, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v7, v12, v4

    :cond_232
    move v4, v5

    move v8, v5

    goto/16 :goto_d8

    :pswitch_236  #0xaa
    add-int/lit8 v4, v6, 0x4

    const v5, 0xfffc

    and-int/2addr v4, v5

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v10, v4

    add-int/lit8 v7, v5, 0x1

    aget-byte v5, v10, v5

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, v10, v7

    add-int/lit8 v18, v8, 0x1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    and-int/lit16 v5, v7, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    aget-byte v5, v10, v8

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    add-int v5, v4, v6

    sget-object v4, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v4, v12, v5

    add-int/lit8 v4, v18, 0x1

    aget-byte v7, v10, v18

    add-int/lit8 v8, v4, 0x1

    aget-byte v4, v10, v4

    add-int/lit8 v18, v8, 0x1

    aget-byte v8, v10, v8

    add-int/lit8 v19, v18, 0x1

    aget-byte v18, v10, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v4, v7

    and-int/lit16 v7, v8, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v4, v7

    or-int v7, v18, v4

    add-int/lit8 v4, v19, 0x1

    aget-byte v8, v10, v19

    add-int/lit8 v18, v4, 0x1

    aget-byte v19, v10, v4

    add-int/lit8 v20, v18, 0x1

    aget-byte v18, v10, v18

    add-int/lit8 v4, v20, 0x1

    aget-byte v20, v10, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x8

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x10

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    or-int v8, v8, v19

    or-int v8, v8, v18

    or-int v8, v8, v20

    sub-int v18, v8, v7

    add-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    sub-int v19, v8, v7

    add-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v5, v19, v20

    const/4 v5, 0x1

    :goto_2d2
    sub-int v20, v8, v7

    add-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    if-lt v5, v0, :cond_2e8

    add-int/lit8 v5, v4, -0x1

    const/16 v4, 0x73

    aput-char v4, v13, v5

    aput-object v18, v16, v5

    aput-object v19, v17, v5

    move v4, v5

    move v8, v5

    goto/16 :goto_d8

    :cond_2e8
    add-int v20, v7, v5

    add-int/lit8 v20, v20, -0x1

    aput v20, v18, v5

    add-int/lit8 v20, v4, 0x1

    aget-byte v21, v10, v4

    add-int/lit8 v4, v20, 0x1

    aget-byte v20, v10, v20

    add-int/lit8 v22, v4, 0x1

    aget-byte v23, v10, v4

    add-int/lit8 v4, v22, 0x1

    aget-byte v22, v10, v22

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    shl-int/lit8 v23, v23, 0x8

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v21, v21, 0x18

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x10

    or-int v20, v20, v21

    or-int v20, v20, v23

    or-int v20, v20, v22

    add-int v20, v20, v6

    aput v20, v19, v5

    sget-object v21, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v21, v12, v20

    add-int/lit8 v5, v5, 0x1

    goto :goto_2d2

    :pswitch_32d  #0xab
    add-int/lit8 v4, v6, 0x4

    const v5, 0xfffc

    and-int/2addr v4, v5

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v10, v4

    add-int/lit8 v7, v5, 0x1

    aget-byte v5, v10, v5

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, v10, v7

    add-int/lit8 v18, v8, 0x1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    and-int/lit16 v5, v7, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    aget-byte v5, v10, v8

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    add-int v5, v4, v6

    sget-object v4, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v4, v12, v5

    add-int/lit8 v4, v18, 0x1

    aget-byte v7, v10, v18

    add-int/lit8 v8, v4, 0x1

    aget-byte v18, v10, v4

    add-int/lit8 v19, v8, 0x1

    aget-byte v8, v10, v8

    add-int/lit8 v4, v19, 0x1

    aget-byte v19, v10, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x10

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    or-int v7, v7, v18

    or-int/2addr v7, v8

    or-int v7, v7, v19

    add-int/lit8 v8, v7, 0x1

    new-array v8, v8, [I

    add-int/lit8 v18, v7, 0x1

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v5, v18, v19

    const/4 v5, 0x1

    :goto_396
    if-le v5, v7, :cond_3a6

    add-int/lit8 v5, v4, -0x1

    const/16 v4, 0x73

    aput-char v4, v13, v5

    aput-object v8, v16, v5

    aput-object v18, v17, v5

    move v4, v5

    move v8, v5

    goto/16 :goto_d8

    :cond_3a6
    add-int/lit8 v19, v4, 0x1

    aget-byte v4, v10, v4

    add-int/lit8 v20, v19, 0x1

    aget-byte v19, v10, v19

    add-int/lit8 v21, v20, 0x1

    aget-byte v20, v10, v20

    add-int/lit8 v22, v21, 0x1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x10

    or-int v4, v4, v19

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x8

    or-int v4, v4, v19

    aget-byte v19, v10, v21

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    or-int v4, v4, v19

    aput v4, v8, v5

    add-int/lit8 v4, v22, 0x1

    aget-byte v19, v10, v22

    add-int/lit8 v20, v4, 0x1

    aget-byte v21, v10, v4

    add-int/lit8 v22, v20, 0x1

    aget-byte v20, v10, v20

    add-int/lit8 v4, v22, 0x1

    aget-byte v22, v10, v22

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x8

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v21, v21, 0x10

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x18

    or-int v19, v19, v21

    or-int v19, v19, v20

    or-int v19, v19, v22

    add-int v19, v19, v6

    aput v19, v18, v5

    sget-object v20, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v20, v12, v19

    add-int/lit8 v5, v5, 0x1

    goto :goto_396

    :pswitch_417  #0xac, 0xad, 0xae, 0xaf, 0xb0
    const/16 v4, 0x76

    aput-char v4, v13, v6

    add-int/lit8 v4, v6, 0x1

    if-ge v4, v11, :cond_425

    add-int/lit8 v4, v6, 0x1

    sget-object v5, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v5, v12, v4

    :cond_425
    move v4, v6

    move v8, v6

    goto/16 :goto_d8

    :pswitch_429  #0xb1
    const/4 v4, -0x1

    if-eq v5, v4, :cond_432

    add-int/lit8 v4, v5, 0x1

    sget-object v5, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v5, v12, v4

    :cond_432
    const/16 v4, 0x72

    aput-char v4, v13, v6

    add-int/lit8 v4, v6, 0x1

    if-ge v4, v11, :cond_440

    add-int/lit8 v4, v6, 0x1

    sget-object v5, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v5, v12, v4

    :cond_440
    move v4, v6

    move v8, v6

    goto/16 :goto_d8

    :pswitch_444  #0xbf
    const/16 v4, 0x74

    aput-char v4, v13, v6

    add-int/lit8 v4, v6, 0x1

    if-ge v4, v11, :cond_452

    add-int/lit8 v4, v6, 0x1

    sget-object v5, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v5, v12, v4

    :cond_452
    move v4, v6

    move v8, v6

    goto/16 :goto_d8

    :pswitch_456  #0xc4
    add-int/lit8 v7, v6, 0x1

    aget-byte v4, v10, v7

    and-int/lit16 v4, v4, 0xff

    sparse-switch v4, :sswitch_data_984

    move v4, v5

    :goto_460
    add-int/lit8 v5, v7, 0x2

    move v8, v5

    goto/16 :goto_d8

    :sswitch_465
    add-int/lit8 v7, v7, 0x4

    add-int/lit8 v4, v5, 0x6

    if-ne v4, v7, :cond_808

    add-int/lit8 v4, v7, -0x3

    aget-byte v4, v10, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v8, v7, -0x2

    aget-byte v8, v10, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v4, v8

    invoke-static {v10, v7, v4}, Lorg/c/a/a/c/a/a/c/k;->a([BII)Z

    move-result v4

    if-nez v4, :cond_808

    move v4, v7

    move v8, v7

    goto/16 :goto_d8

    :sswitch_484
    add-int/lit8 v5, v7, 0x2

    const/16 v4, 0x52

    aput-char v4, v13, v5

    add-int/lit8 v4, v5, 0x1

    if-ge v4, v11, :cond_494

    add-int/lit8 v4, v5, 0x1

    sget-object v7, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v7, v12, v4

    :cond_494
    move v4, v5

    move v8, v5

    goto/16 :goto_d8

    :sswitch_498
    add-int/lit8 v4, v7, 0x2

    goto :goto_460

    :pswitch_49b  #0xc5
    add-int/lit8 v7, v6, 0x3

    move v4, v5

    move v8, v7

    goto/16 :goto_d8

    :pswitch_4a1  #0xc8
    add-int/lit8 v4, v5, 0x1

    if-ne v4, v6, :cond_4e3

    const/16 v4, 0x67

    :goto_4a7
    aput-char v4, v13, v6

    add-int/lit8 v5, v6, 0x1

    aget-byte v7, v10, v5

    add-int/lit8 v5, v5, 0x1

    aget-byte v8, v10, v5

    add-int/lit8 v5, v5, 0x1

    aget-byte v18, v10, v5

    add-int/lit8 v5, v5, 0x1

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    move/from16 v0, v18

    and-int/lit16 v8, v0, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    aget-byte v8, v10, v5

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    add-int/2addr v7, v6

    sget-object v8, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v8, v12, v7

    aput-char v4, v13, v5

    aput v7, v15, v5

    add-int/lit8 v4, v5, 0x1

    if-ge v4, v11, :cond_4df

    add-int/lit8 v4, v5, 0x1

    sget-object v7, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v7, v12, v4

    :cond_4df
    move v4, v5

    move v8, v5

    goto/16 :goto_d8

    :cond_4e3
    const/16 v4, 0x47

    goto :goto_4a7

    :pswitch_4e6  #0xc9
    const/4 v4, -0x1

    if-eq v5, v4, :cond_4ef

    add-int/lit8 v4, v5, 0x1

    sget-object v5, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v5, v12, v4

    :cond_4ef
    const/16 v4, 0x6a

    aput-char v4, v13, v6

    add-int/lit8 v4, v6, 0x1

    aget-byte v7, v10, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v8, v10, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v18, v10, v4

    add-int/lit8 v5, v4, 0x1

    and-int/lit16 v4, v7, 0xff

    shl-int/lit8 v4, v4, 0x18

    and-int/lit16 v7, v8, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v4, v7

    move/from16 v0, v18

    and-int/lit16 v7, v0, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v4, v7

    aget-byte v7, v10, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v4, v7

    add-int/2addr v4, v6

    sget-object v7, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v7, v12, v4

    const/16 v7, 0x6a

    aput-char v7, v13, v5

    aput v4, v15, v5

    add-int/lit8 v4, v5, 0x1

    if-ge v4, v11, :cond_52b

    add-int/lit8 v4, v5, 0x1

    sget-object v7, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v7, v12, v4

    :cond_52b
    move v4, v5

    move v8, v5

    goto/16 :goto_d8

    :cond_52f
    aget-object v6, v7, v4

    invoke-virtual {v6}, Lorg/c/a/a/b/a/a/w;->a()I

    move-result v8

    sget-object v18, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v18, v12, v8

    invoke-virtual {v6}, Lorg/c/a/a/b/a/a/w;->c()I

    move-result v6

    sget-object v8, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v8, v12, v6

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3c

    :cond_545
    aget-object v20, v8, v5

    invoke-virtual/range {v20 .. v20}, Lorg/c/a/a/b/a/a/ag;->a()I

    move-result v21

    :goto_54b
    move/from16 v0, v21

    if-lt v3, v0, :cond_563

    invoke-virtual/range {v20 .. v20}, Lorg/c/a/a/b/a/a/ag;->b()I

    move-result v21

    move/from16 v0, v21

    if-le v6, v0, :cond_55b

    sget-object v6, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v6, v12, v3

    :cond_55b
    invoke-virtual/range {v20 .. v20}, Lorg/c/a/a/b/a/a/ag;->b()I

    move-result v6

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_63

    :cond_563
    aput v6, v18, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_54b

    :cond_568
    aput v6, v18, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_67

    :cond_56e
    aget-object v8, v12, v5

    if-eqz v8, :cond_579

    invoke-virtual {v4, v3, v5}, Lorg/c/a/a/c/a/a/a/a/f;->a(II)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v8

    aput-object v8, v12, v3

    move v3, v5

    :cond_579
    aget v5, v14, v5

    goto/16 :goto_79

    :cond_57d
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    aget-char v18, v13, v6

    sparse-switch v18, :sswitch_data_9a2

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v6

    aget-object v6, v12, v6

    invoke-virtual {v3, v6}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5a5
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto/16 :goto_a5

    :sswitch_5aa
    const/high16 v18, 0x4000000

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    aget v6, v15, v6

    aget-object v6, v12, v6

    invoke-virtual {v3, v6}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5a5

    :sswitch_5c0
    const/high16 v18, 0x10000000

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    aget v6, v15, v6

    aget-object v6, v12, v6

    invoke-virtual {v3, v6}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5a5

    :sswitch_5d6
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    sget-object v6, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v3, v6}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_5a5

    :sswitch_5e1
    const/16 v6, 0x10

    invoke-virtual {v3, v6}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    sget-object v6, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v3, v6}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_5a5

    :sswitch_5ec
    const v18, 0x8000

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v18

    aget-object v18, v12, v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual/range {v18 .. v18}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    aget v6, v15, v6

    aget-object v6, v12, v6

    invoke-virtual {v3, v6}, Lorg/c/a/a/c/a/a/a/a/a;->b(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5a5

    :sswitch_617
    const/16 v18, 0x40

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    aget-object v18, v16, v6

    aget-object v19, v17, v6

    new-instance v20, Lorg/c/a/a/d/c;

    move-object/from16 v0, v19

    array-length v6, v0

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Lorg/c/a/a/d/c;-><init>(I)V

    const/4 v6, 0x0

    aget v21, v19, v6

    aget-object v6, v12, v21

    new-instance v22, Lorg/c/a/a/c/a/a/a/a/e;

    move-object/from16 v0, v22

    invoke-direct {v0, v6}, Lorg/c/a/a/c/a/a/a/a/e;-><init>(Lorg/c/a/a/c/a/a/a/a/a;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    :goto_64c
    move/from16 v0, v22

    if-lt v6, v0, :cond_657

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/d/c;)V

    goto/16 :goto_5a5

    :cond_657
    aget v23, v19, v6

    move/from16 v0, v23

    move/from16 v1, v21

    if-eq v0, v1, :cond_67e

    aget-object v23, v12, v23

    new-instance v24, Lorg/c/a/a/c/a/a/a/a/e;

    aget v25, v18, v6

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lorg/c/a/a/c/a/a/a/a/e;-><init>(ILorg/c/a/a/c/a/a/a/a/a;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v23 .. v23}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_67e
    add-int/lit8 v6, v6, 0x1

    goto :goto_64c

    :sswitch_681
    const/16 v18, 0x2000

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v18

    aget-object v18, v12, v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual/range {v18 .. v18}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    aget v6, v15, v6

    aget-object v6, v12, v6

    invoke-virtual {v3, v6}, Lorg/c/a/a/c/a/a/a/a/a;->b(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5a5

    :sswitch_6ac
    const/16 v6, 0x4000

    invoke-virtual {v3, v6}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    sget-object v6, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v3, v6}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto/16 :goto_5a5

    :sswitch_6b8
    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    sget-object v6, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v3, v6}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto/16 :goto_5a5

    :cond_6c4
    aget-object v17, v7, v6

    invoke-virtual/range {v17 .. v17}, Lorg/c/a/a/b/a/a/w;->a()I

    move-result v18

    invoke-virtual/range {v17 .. v17}, Lorg/c/a/a/b/a/a/w;->c()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_73c

    aget-char v3, v13, v19

    const/16 v5, 0x54

    if-ne v3, v5, :cond_6e6

    aget v3, v15, v19

    aget-object v3, v12, v3

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v3

    move/from16 v0, v18

    if-gt v0, v3, :cond_73c

    :cond_6e6
    invoke-virtual/range {v17 .. v17}, Lorg/c/a/a/b/a/a/w;->d()I

    move-result v20

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/c/a/a/c/a/a/a/a/a;

    if-nez v3, :cond_801

    invoke-virtual/range {v17 .. v17}, Lorg/c/a/a/b/a/a/w;->b()I

    move-result v3

    aget-object v21, v12, v18

    const/16 v5, 0x200

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0, v3}, Lorg/c/a/a/c/a/a/a/a/f;->a(III)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v5}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v22

    invoke-virtual/range {v21 .. v21}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_713
    :goto_713
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_741

    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    aput-object v5, v12, v18

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_725
    if-nez v20, :cond_75d

    const/4 v3, 0x0

    :goto_728
    aget-object v17, v12, v19

    move-object/from16 v0, v17

    invoke-virtual {v5, v3, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(Ljava/lang/String;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual/range {v17 .. v17}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    aput v18, v15, v19

    const/16 v3, 0x54

    aput-char v3, v13, v19

    :cond_73c
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto/16 :goto_bc

    :cond_741
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/c/a/a/c/a/a/a/a/a;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/c/a/a/c/a/a/a/a/a;->f(Lorg/c/a/a/c/a/a/a/a/a;)Z

    move-result v25

    if-nez v25, :cond_713

    move-object/from16 v0, v21

    invoke-virtual {v3, v0, v5}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->remove()V

    goto :goto_713

    :cond_75d
    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/c/a/a/b/a/b;->b(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_728

    :cond_764
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v6

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_c4

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_c4

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v7

    const/high16 v8, 0x4000000

    if-ne v7, v8, :cond_7b5

    invoke-static {v9, v10, v3}, Lorg/c/a/a/c/a/a/c/c;->a(Lorg/c/a/a/b/a/b;[BLorg/c/a/a/c/a/a/a/a/a;)I

    move-result v7

    if-lez v7, :cond_7b5

    const/high16 v7, 0x10000000

    invoke-virtual {v3, v7}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v7

    invoke-virtual {v3, v7}, Lorg/c/a/a/c/a/a/a/a/a;->c(I)V

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v7

    invoke-virtual {v7}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    goto/16 :goto_c4

    :cond_7b5
    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v7

    const v8, 0x8000

    if-ne v7, v8, :cond_c4

    invoke-static {v9, v10, v3}, Lorg/c/a/a/c/a/a/c/c;->a(Lorg/c/a/a/b/a/b;[BLorg/c/a/a/c/a/a/a/a/a;)I

    move-result v7

    if-lez v7, :cond_c4

    const v7, 0x8000

    invoke-virtual {v3, v7}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v7

    invoke-virtual {v3, v7}, Lorg/c/a/a/c/a/a/a/a/a;->c(I)V

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v7

    invoke-virtual {v7}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/c/a/a/c/a/a/a/a/a;->b(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v7

    invoke-virtual {v7}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    goto/16 :goto_c4

    :cond_801
    move-object v5, v3

    goto/16 :goto_725

    :cond_804
    move v4, v5

    move v8, v7

    goto/16 :goto_d8

    :cond_808
    move v4, v5

    move v8, v7

    goto/16 :goto_d8

    :pswitch_data_80c
    .packed-switch 0x10
        :pswitch_df  #00000010
        :pswitch_18d  #00000011
        :pswitch_df  #00000012
        :pswitch_18d  #00000013
        :pswitch_18d  #00000014
        :pswitch_df  #00000015
        :pswitch_df  #00000016
        :pswitch_df  #00000017
        :pswitch_df  #00000018
        :pswitch_df  #00000019
        :pswitch_d6  #0000001a
        :pswitch_d6  #0000001b
        :pswitch_d6  #0000001c
        :pswitch_d6  #0000001d
        :pswitch_d6  #0000001e
        :pswitch_d6  #0000001f
        :pswitch_d6  #00000020
        :pswitch_d6  #00000021
        :pswitch_d6  #00000022
        :pswitch_d6  #00000023
        :pswitch_d6  #00000024
        :pswitch_d6  #00000025
        :pswitch_d6  #00000026
        :pswitch_d6  #00000027
        :pswitch_d6  #00000028
        :pswitch_d6  #00000029
        :pswitch_d6  #0000002a
        :pswitch_d6  #0000002b
        :pswitch_d6  #0000002c
        :pswitch_d6  #0000002d
        :pswitch_d6  #0000002e
        :pswitch_d6  #0000002f
        :pswitch_d6  #00000030
        :pswitch_d6  #00000031
        :pswitch_d6  #00000032
        :pswitch_d6  #00000033
        :pswitch_d6  #00000034
        :pswitch_d6  #00000035
        :pswitch_e4  #00000036
        :pswitch_e4  #00000037
        :pswitch_e4  #00000038
        :pswitch_e4  #00000039
        :pswitch_e4  #0000003a
        :pswitch_e9  #0000003b
        :pswitch_e9  #0000003c
        :pswitch_e9  #0000003d
        :pswitch_e9  #0000003e
        :pswitch_e9  #0000003f
        :pswitch_e9  #00000040
        :pswitch_e9  #00000041
        :pswitch_e9  #00000042
        :pswitch_e9  #00000043
        :pswitch_e9  #00000044
        :pswitch_e9  #00000045
        :pswitch_e9  #00000046
        :pswitch_e9  #00000047
        :pswitch_e9  #00000048
        :pswitch_e9  #00000049
        :pswitch_e9  #0000004a
        :pswitch_e9  #0000004b
        :pswitch_e9  #0000004c
        :pswitch_e9  #0000004d
        :pswitch_e9  #0000004e
        :pswitch_e9  #0000004f
        :pswitch_e9  #00000050
        :pswitch_e9  #00000051
        :pswitch_e9  #00000052
        :pswitch_e9  #00000053
        :pswitch_e9  #00000054
        :pswitch_e9  #00000055
        :pswitch_e9  #00000056
        :pswitch_e9  #00000057
        :pswitch_e9  #00000058
        :pswitch_d6  #00000059
        :pswitch_d6  #0000005a
        :pswitch_d6  #0000005b
        :pswitch_d6  #0000005c
        :pswitch_d6  #0000005d
        :pswitch_d6  #0000005e
        :pswitch_d6  #0000005f
        :pswitch_d6  #00000060
        :pswitch_d6  #00000061
        :pswitch_d6  #00000062
        :pswitch_d6  #00000063
        :pswitch_d6  #00000064
        :pswitch_d6  #00000065
        :pswitch_d6  #00000066
        :pswitch_d6  #00000067
        :pswitch_d6  #00000068
        :pswitch_d6  #00000069
        :pswitch_d6  #0000006a
        :pswitch_d6  #0000006b
        :pswitch_d6  #0000006c
        :pswitch_d6  #0000006d
        :pswitch_d6  #0000006e
        :pswitch_d6  #0000006f
        :pswitch_d6  #00000070
        :pswitch_d6  #00000071
        :pswitch_d6  #00000072
        :pswitch_d6  #00000073
        :pswitch_d6  #00000074
        :pswitch_d6  #00000075
        :pswitch_d6  #00000076
        :pswitch_d6  #00000077
        :pswitch_d6  #00000078
        :pswitch_d6  #00000079
        :pswitch_d6  #0000007a
        :pswitch_d6  #0000007b
        :pswitch_d6  #0000007c
        :pswitch_d6  #0000007d
        :pswitch_d6  #0000007e
        :pswitch_d6  #0000007f
        :pswitch_d6  #00000080
        :pswitch_d6  #00000081
        :pswitch_d6  #00000082
        :pswitch_d6  #00000083
        :pswitch_177  #00000084
        :pswitch_d6  #00000085
        :pswitch_d6  #00000086
        :pswitch_d6  #00000087
        :pswitch_d6  #00000088
        :pswitch_d6  #00000089
        :pswitch_d6  #0000008a
        :pswitch_d6  #0000008b
        :pswitch_d6  #0000008c
        :pswitch_d6  #0000008d
        :pswitch_d6  #0000008e
        :pswitch_d6  #0000008f
        :pswitch_d6  #00000090
        :pswitch_d6  #00000091
        :pswitch_d6  #00000092
        :pswitch_d6  #00000093
        :pswitch_d6  #00000094
        :pswitch_d6  #00000095
        :pswitch_d6  #00000096
        :pswitch_d6  #00000097
        :pswitch_d6  #00000098
        :pswitch_204  #00000099
        :pswitch_204  #0000009a
        :pswitch_204  #0000009b
        :pswitch_204  #0000009c
        :pswitch_204  #0000009d
        :pswitch_204  #0000009e
        :pswitch_204  #0000009f
        :pswitch_204  #000000a0
        :pswitch_204  #000000a1
        :pswitch_204  #000000a2
        :pswitch_204  #000000a3
        :pswitch_204  #000000a4
        :pswitch_204  #000000a5
        :pswitch_204  #000000a6
        :pswitch_193  #000000a7
        :pswitch_1ce  #000000a8
        :pswitch_ec  #000000a9
        :pswitch_236  #000000aa
        :pswitch_32d  #000000ab
        :pswitch_417  #000000ac
        :pswitch_417  #000000ad
        :pswitch_417  #000000ae
        :pswitch_417  #000000af
        :pswitch_417  #000000b0
        :pswitch_429  #000000b1
        :pswitch_18d  #000000b2
        :pswitch_ff  #000000b3
        :pswitch_18d  #000000b4
        :pswitch_ff  #000000b5
        :pswitch_104  #000000b6
        :pswitch_104  #000000b7
        :pswitch_104  #000000b8
        :pswitch_13c  #000000b9
        :pswitch_13c  #000000ba
        :pswitch_18d  #000000bb
        :pswitch_df  #000000bc
        :pswitch_18d  #000000bd
        :pswitch_d6  #000000be
        :pswitch_444  #000000bf
        :pswitch_18d  #000000c0
        :pswitch_18d  #000000c1
        :pswitch_e9  #000000c2
        :pswitch_e9  #000000c3
        :pswitch_456  #000000c4
        :pswitch_49b  #000000c5
        :pswitch_204  #000000c6
        :pswitch_204  #000000c7
        :pswitch_4a1  #000000c8
        :pswitch_4e6  #000000c9
    .end packed-switch

    :sswitch_data_984
    .sparse-switch
        0x36 -> :sswitch_498
        0x37 -> :sswitch_498
        0x38 -> :sswitch_498
        0x39 -> :sswitch_498
        0x3a -> :sswitch_498
        0x84 -> :sswitch_465
        0xa9 -> :sswitch_484
    .end sparse-switch

    :sswitch_data_9a2
    .sparse-switch
        0x47 -> :sswitch_5c0
        0x52 -> :sswitch_6ac
        0x63 -> :sswitch_5ec
        0x67 -> :sswitch_5aa
        0x6a -> :sswitch_681
        0x72 -> :sswitch_5e1
        0x73 -> :sswitch_617
        0x74 -> :sswitch_5d6
        0x76 -> :sswitch_6b8
    .end sparse-switch
.end method

.method protected static a([BII)Z
    .registers 7

    const/4 v0, 0x1

    add-int/lit8 v1, p1, 0x1

    array-length v2, p0

    if-ge v1, v2, :cond_1b

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x15

    if-ne v2, v3, :cond_17

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    if-ne p2, v1, :cond_1b

    :cond_16
    :goto_16
    return v0

    :cond_17
    add-int/lit8 v1, p2, 0x1a

    if-eq v2, v1, :cond_16

    :cond_1b
    const/4 v0, 0x0

    goto :goto_16
.end method
