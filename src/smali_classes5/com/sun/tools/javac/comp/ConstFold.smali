.class Lcom/sun/tools/javac/comp/ConstFold;
.super Ljava/lang/Object;
.source "ConstFold.java"


# static fields
.field protected static final constFoldKey:Lcom/sun/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Context$Key",
            "<",
            "Lcom/sun/tools/javac/comp/ConstFold;",
            ">;"
        }
    .end annotation
.end field

.field static minusOne:Ljava/lang/Integer;

.field static one:Ljava/lang/Integer;

.field static zero:Ljava/lang/Integer;


# instance fields
.field private syms:Lcom/sun/tools/javac/code/Symtab;


# direct methods
.method static strictfp constructor <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Lcom/sun/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/comp/ConstFold;->constFoldKey:Lcom/sun/tools/javac/util/Context$Key;

    .line 64
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sun/tools/javac/comp/ConstFold;->minusOne:Ljava/lang/Integer;

    .line 65
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sun/tools/javac/comp/ConstFold;->zero:Ljava/lang/Integer;

    .line 66
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sun/tools/javac/comp/ConstFold;->one:Ljava/lang/Integer;

    return-void
.end method

.method private strictfp constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Lcom/sun/tools/javac/comp/ConstFold;->constFoldKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 61
    invoke-static {p1}, Lcom/sun/tools/javac/code/Symtab;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    .line 62
    return-void
.end method

.method private static strictfp b2i(Z)Ljava/lang/Integer;
    .registers 2

    .line 71
    if-eqz p0, :cond_5

    sget-object v0, Lcom/sun/tools/javac/comp/ConstFold;->one:Ljava/lang/Integer;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Lcom/sun/tools/javac/comp/ConstFold;->zero:Ljava/lang/Integer;

    goto :goto_4
.end method

.method private static strictfp doubleValue(Ljava/lang/Object;)D
    .registers 3

    .line 76
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method private static strictfp floatValue(Ljava/lang/Object;)F
    .registers 2

    .line 75
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public static strictfp instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/ConstFold;
    .registers 2

    .line 52
    sget-object v0, Lcom/sun/tools/javac/comp/ConstFold;->constFoldKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/ConstFold;

    .line 53
    if-nez v0, :cond_f

    .line 54
    new-instance v0, Lcom/sun/tools/javac/comp/ConstFold;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/comp/ConstFold;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 55
    :cond_f
    return-object v0
.end method

.method private static strictfp intValue(Ljava/lang/Object;)I
    .registers 2

    .line 73
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private static strictfp longValue(Ljava/lang/Object;)J
    .registers 3

    .line 74
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method strictfp coerce(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 7

    .line 335
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v1, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    if-ne v0, v1, :cond_b

    .line 356
    :goto_a
    return-object p1

    .line 337
    :cond_b
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_19

    .line 338
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v0

    .line 339
    iget v1, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    packed-switch v1, :pswitch_data_9c

    :cond_19
    move-object p1, p2

    .line 356
    goto :goto_a

    .line 353
    :pswitch_1b  #0x7
    iget-object v1, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    goto :goto_a

    .line 351
    :pswitch_2c  #0x6
    iget-object v1, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    goto :goto_a

    .line 349
    :pswitch_3d  #0x5
    iget-object v1, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    goto :goto_a

    .line 347
    :pswitch_4e  #0x4
    iget-object v1, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    goto :goto_a

    .line 345
    :pswitch_5f  #0x3
    iget-object v1, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->shortType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v0

    int-to-short v0, v0

    add-int/lit8 v0, v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    goto :goto_a

    .line 343
    :pswitch_73  #0x2
    iget-object v1, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->charType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v0

    int-to-char v0, v0

    add-int/lit8 v0, v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    goto :goto_a

    .line 341
    :pswitch_87  #0x1
    iget-object v1, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->byteType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v0

    int-to-byte v0, v0

    add-int/lit8 v0, v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    goto/16 :goto_a

    .line 339
    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_87  #00000001
        :pswitch_73  #00000002
        :pswitch_5f  #00000003
        :pswitch_4e  #00000004
        :pswitch_3d  #00000005
        :pswitch_2c  #00000006
        :pswitch_1b  #00000007
    .end packed-switch
.end method

.method strictfp fold(ILcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/code/Type;"
        }
    .end annotation

    .line 87
    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v0

    .line 88
    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 89
    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/comp/ConstFold;->fold1(ILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 91
    :goto_f
    return-object v0

    .line 90
    :cond_10
    const/4 v1, 0x2

    if-ne v0, v1, :cond_22

    .line 91
    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v1, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iget-object v1, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/tools/javac/comp/ConstFold;->fold2(ILcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_f

    .line 93
    :cond_22
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method strictfp fold1(ILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 106
    :try_start_3
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v3

    .line 107
    if-eqz p1, :cond_1c

    const/16 v4, 0x101

    if-eq p1, v4, :cond_114

    const/16 v4, 0x82

    if-eq p1, v4, :cond_100

    const/16 v4, 0x83

    if-eq p1, v4, :cond_ea

    packed-switch p1, :pswitch_data_12e

    packed-switch p1, :pswitch_data_13a

    move-object p2, v0

    .line 144
    :cond_1c
    :goto_1c
    return-object p2

    .line 125
    :pswitch_1d  #0x9e
    iget-object v4, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_30

    :goto_27
    invoke-static {v1}, Lcom/sun/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    goto :goto_1c

    :cond_30
    move v1, v2

    goto :goto_27

    .line 123
    :pswitch_32  #0x9d
    iget-object v4, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_45

    :goto_3c
    invoke-static {v1}, Lcom/sun/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    goto :goto_1c

    :cond_45
    move v1, v2

    goto :goto_3c

    .line 127
    :pswitch_47  #0x9c
    iget-object v4, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_5a

    :goto_51
    invoke-static {v1}, Lcom/sun/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    goto :goto_1c

    :cond_5a
    move v1, v2

    goto :goto_51

    .line 121
    :pswitch_5c  #0x9b
    iget-object v4, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_6f

    :goto_66
    invoke-static {v1}, Lcom/sun/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    goto :goto_1c

    :cond_6f
    move v1, v2

    goto :goto_66

    .line 119
    :pswitch_71  #0x9a
    iget-object v4, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_84

    :goto_7b
    invoke-static {v1}, Lcom/sun/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    goto :goto_1c

    :cond_84
    move v1, v2

    goto :goto_7b

    .line 117
    :pswitch_86  #0x99
    iget-object v4, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_99

    :goto_90
    invoke-static {v1}, Lcom/sun/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    goto :goto_1c

    :cond_99
    move v1, v2

    goto :goto_90

    .line 138
    :pswitch_9b  #0x77
    iget-object v1, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    new-instance v2, Ljava/lang/Double;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide v4

    neg-double v4, v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    goto/16 :goto_1c

    .line 135
    :pswitch_af  #0x76
    iget-object v1, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    new-instance v2, Ljava/lang/Float;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result v3

    neg-float v3, v3

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    goto/16 :goto_1c

    .line 130
    :pswitch_c3  #0x75
    iget-object v1, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    new-instance v2, Ljava/lang/Long;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v4

    neg-long v4, v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    goto/16 :goto_1c

    .line 111
    :pswitch_d7  #0x74
    iget-object v1, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v2

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    goto/16 :goto_1c

    .line 132
    :cond_ea
    iget-object v1, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    new-instance v2, Ljava/lang/Long;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    goto/16 :goto_1c

    .line 113
    :cond_100
    iget-object v1, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v2

    xor-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    goto/16 :goto_1c

    .line 115
    :cond_114
    iget-object v4, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_128

    :goto_11e
    invoke-static {v1}, Lcom/sun/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;
    :try_end_125
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_125} :catch_12a

    move-result-object p2

    goto/16 :goto_1c

    :cond_128
    move v1, v2

    goto :goto_11e

    .line 143
    :catch_12a
    move-exception v1

    move-object p2, v0

    .line 144
    goto/16 :goto_1c

    .line 107
    :pswitch_data_12e
    .packed-switch 0x74
        :pswitch_d7  #00000074
        :pswitch_c3  #00000075
        :pswitch_af  #00000076
        :pswitch_9b  #00000077
    .end packed-switch

    :pswitch_data_13a
    .packed-switch 0x99
        :pswitch_86  #00000099
        :pswitch_71  #0000009a
        :pswitch_5c  #0000009b
        :pswitch_47  #0000009c
        :pswitch_32  #0000009d
        :pswitch_1d  #0000009e
    .end packed-switch
.end method

.method strictfp fold2(ILcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 14

    const/4 v1, 0x0

    const/16 v6, 0x8

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 158
    const/16 v3, 0x1ff

    if-le p1, v3, :cond_1d

    .line 161
    shr-int/lit8 v0, p1, 0x9

    :try_start_b
    invoke-virtual {p0, v0, p2, p3}, Lcom/sun/tools/javac/comp/ConstFold;->fold2(ILcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_16

    .line 323
    :goto_15
    return-object v0

    .line 163
    :cond_16
    and-int/lit16 v2, p1, 0x1ff

    invoke-virtual {p0, v2, v0}, Lcom/sun/tools/javac/comp/ConstFold;->fold1(ILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_15

    .line 165
    :cond_1d
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v3

    .line 166
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v4

    .line 167
    const/16 v5, 0x100

    if-eq p1, v5, :cond_556

    const/16 v5, 0x102

    if-eq p1, v5, :cond_53b

    const/16 v5, 0x103

    if-eq p1, v5, :cond_520

    packed-switch p1, :pswitch_data_57c

    packed-switch p1, :pswitch_data_5a8

    packed-switch p1, :pswitch_data_5c4

    packed-switch p1, :pswitch_data_5d2

    packed-switch p1, :pswitch_data_5e6

    move-object v0, v1

    .line 319
    goto :goto_15

    .line 314
    :pswitch_42  #0xa6
    iget-object v5, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_55

    :goto_4c
    invoke-static {v0}, Lcom/sun/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_15

    :cond_55
    move v0, v2

    goto :goto_4c

    .line 312
    :pswitch_57  #0xa5
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/sun/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_15

    .line 213
    :pswitch_68  #0xa4
    iget-object v5, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    .line 214
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v4

    if-gt v3, v4, :cond_7f

    :goto_76
    invoke-static {v0}, Lcom/sun/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object v0

    .line 213
    invoke-virtual {v5, v0}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_15

    :cond_7f
    move v0, v2

    .line 214
    goto :goto_76

    .line 210
    :pswitch_81  #0xa3
    iget-object v5, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    .line 211
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v4

    if-le v3, v4, :cond_99

    :goto_8f
    invoke-static {v0}, Lcom/sun/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object v0

    .line 210
    invoke-virtual {v5, v0}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    :cond_99
    move v0, v2

    .line 211
    goto :goto_8f

    .line 216
    :pswitch_9b  #0xa2
    iget-object v5, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    .line 217
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v4

    if-lt v3, v4, :cond_b3

    :goto_a9
    invoke-static {v0}, Lcom/sun/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object v0

    .line 216
    invoke-virtual {v5, v0}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    :cond_b3
    move v0, v2

    .line 217
    goto :goto_a9

    .line 207
    :pswitch_b5  #0xa1
    iget-object v5, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    .line 208
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v4

    if-ge v3, v4, :cond_cd

    :goto_c3
    invoke-static {v0}, Lcom/sun/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object v0

    .line 207
    invoke-virtual {v5, v0}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    :cond_cd
    move v0, v2

    .line 208
    goto :goto_c3

    .line 204
    :pswitch_cf  #0xa0
    iget-object v5, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    .line 205
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v4

    if-eq v3, v4, :cond_e7

    :goto_dd
    invoke-static {v0}, Lcom/sun/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object v0

    .line 204
    invoke-virtual {v5, v0}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    :cond_e7
    move v0, v2

    .line 205
    goto :goto_dd

    .line 201
    :pswitch_e9  #0x9f
    iget-object v5, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    .line 202
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v4

    if-ne v3, v4, :cond_101

    :goto_f7
    invoke-static {v0}, Lcom/sun/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object v0

    .line 201
    invoke-virtual {v5, v0}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    :cond_101
    move v0, v2

    .line 202
    goto :goto_f7

    .line 301
    :pswitch_103  #0x97, 0x98
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide v6

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide v8

    cmpg-double v0, v6, v8

    if-gez v0, :cond_11b

    .line 302
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    sget-object v2, Lcom/sun/tools/javac/comp/ConstFold;->minusOne:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 303
    :cond_11b
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide v6

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide v8

    cmpl-double v0, v6, v8

    if-lez v0, :cond_133

    .line 304
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    sget-object v2, Lcom/sun/tools/javac/comp/ConstFold;->one:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 305
    :cond_133
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-nez v0, :cond_14b

    .line 306
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    sget-object v2, Lcom/sun/tools/javac/comp/ConstFold;->zero:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 307
    :cond_14b
    const/16 v0, 0x98

    if-ne p1, v0, :cond_15b

    .line 308
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    sget-object v2, Lcom/sun/tools/javac/comp/ConstFold;->one:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 310
    :cond_15b
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    sget-object v2, Lcom/sun/tools/javac/comp/ConstFold;->minusOne:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 275
    :pswitch_167  #0x95, 0x96
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result v0

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_17f

    .line 276
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    sget-object v2, Lcom/sun/tools/javac/comp/ConstFold;->minusOne:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 277
    :cond_17f
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result v0

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_197

    .line 278
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    sget-object v2, Lcom/sun/tools/javac/comp/ConstFold;->one:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 279
    :cond_197
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result v0

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1af

    .line 280
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    sget-object v2, Lcom/sun/tools/javac/comp/ConstFold;->zero:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 281
    :cond_1af
    const/16 v0, 0x96

    if-ne p1, v0, :cond_1bf

    .line 282
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    sget-object v2, Lcom/sun/tools/javac/comp/ConstFold;->one:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 284
    :cond_1bf
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    sget-object v2, Lcom/sun/tools/javac/comp/ConstFold;->minusOne:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 253
    :pswitch_1cb  #0x94
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v6

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-gez v0, :cond_1e3

    .line 254
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    sget-object v2, Lcom/sun/tools/javac/comp/ConstFold;->minusOne:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 255
    :cond_1e3
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_1fb

    .line 256
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    sget-object v2, Lcom/sun/tools/javac/comp/ConstFold;->one:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 258
    :cond_1fb
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    sget-object v2, Lcom/sun/tools/javac/comp/ConstFold;->zero:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 241
    :pswitch_207  #0x83
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    new-instance v2, Ljava/lang/Long;

    .line 242
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v6

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v4

    xor-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 241
    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 191
    :pswitch_21f  #0x82
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v0, v6, :cond_23a

    .line 192
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    .line 193
    :goto_227
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    xor-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 192
    :cond_23a
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    goto :goto_227

    .line 238
    :pswitch_23f  #0x81
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    new-instance v2, Ljava/lang/Long;

    .line 239
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v6

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v4

    or-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 238
    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 185
    :pswitch_257  #0x80
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v0, v6, :cond_272

    .line 186
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    .line 187
    :goto_25f
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 186
    :cond_272
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    goto :goto_25f

    .line 235
    :pswitch_277  #0x7f
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    new-instance v2, Ljava/lang/Long;

    .line 236
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v6

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v4

    and-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 235
    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 179
    :pswitch_28f  #0x7e
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v0, v6, :cond_2aa

    .line 180
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    .line 181
    :goto_297
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    and-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 180
    :cond_2aa
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    goto :goto_297

    .line 250
    :pswitch_2af  #0x7d
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    new-instance v2, Ljava/lang/Long;

    .line 251
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v6

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    ushr-long v4, v6, v3

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 250
    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 199
    :pswitch_2c8  #0x7c, 0x112
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    ushr-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 247
    :pswitch_2df  #0x7b, 0x111
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    new-instance v2, Ljava/lang/Long;

    .line 248
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v6

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    shr-long v4, v6, v3

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 247
    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 197
    :pswitch_2f8  #0x7a, 0x110
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    shr-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 244
    :pswitch_30f  #0x79, 0x10f
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    new-instance v2, Ljava/lang/Long;

    .line 245
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v6

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    shl-long v4, v6, v3

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 244
    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 195
    :pswitch_328  #0x78, 0x10e
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    shl-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 298
    :pswitch_33f  #0x73
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    new-instance v2, Ljava/lang/Double;

    .line 299
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide v6

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide v4

    rem-double v4, v6, v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Double;-><init>(D)V

    .line 298
    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 272
    :pswitch_358  #0x72
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    new-instance v2, Ljava/lang/Float;

    .line 273
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result v3

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result v4

    rem-float/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    .line 272
    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 232
    :pswitch_370  #0x71
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    new-instance v2, Ljava/lang/Long;

    .line 233
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v6

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v4

    rem-long v4, v6, v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 232
    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 177
    :pswitch_389  #0x70
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    rem-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 295
    :pswitch_3a0  #0x6f
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    new-instance v2, Ljava/lang/Double;

    .line 296
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide v6

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide v4

    div-double v4, v6, v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Double;-><init>(D)V

    .line 295
    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 269
    :pswitch_3b9  #0x6e
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    new-instance v2, Ljava/lang/Float;

    .line 270
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result v3

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result v4

    div-float/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    .line 269
    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 229
    :pswitch_3d1  #0x6d
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    new-instance v2, Ljava/lang/Long;

    .line 230
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v6

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v4

    div-long v4, v6, v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 229
    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 175
    :pswitch_3ea  #0x6c
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    div-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 292
    :pswitch_401  #0x6b
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    new-instance v2, Ljava/lang/Double;

    .line 293
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide v6

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide v4

    mul-double/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/lang/Double;-><init>(D)V

    .line 292
    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 266
    :pswitch_419  #0x6a
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    new-instance v2, Ljava/lang/Float;

    .line 267
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result v3

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    .line 266
    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 226
    :pswitch_431  #0x69
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    new-instance v2, Ljava/lang/Long;

    .line 227
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v6

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v4

    mul-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 226
    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 173
    :pswitch_449  #0x68
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 289
    :pswitch_460  #0x67
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    new-instance v2, Ljava/lang/Double;

    .line 290
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide v6

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide v4

    sub-double v4, v6, v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Double;-><init>(D)V

    .line 289
    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 263
    :pswitch_479  #0x66
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    new-instance v2, Ljava/lang/Float;

    .line 264
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result v3

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    .line 263
    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 223
    :pswitch_491  #0x65
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    new-instance v2, Ljava/lang/Long;

    .line 224
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v6

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v4

    sub-long v4, v6, v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 223
    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 171
    :pswitch_4aa  #0x64
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 286
    :pswitch_4c1  #0x63
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    new-instance v2, Ljava/lang/Double;

    .line 287
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide v6

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide v4

    add-double/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/lang/Double;-><init>(D)V

    .line 286
    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 260
    :pswitch_4d9  #0x62
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    new-instance v2, Ljava/lang/Float;

    .line 261
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result v3

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result v4

    add-float/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    .line 260
    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 220
    :pswitch_4f1  #0x61
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    new-instance v2, Ljava/lang/Long;

    .line 221
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v6

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v4

    add-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 220
    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 169
    :pswitch_509  #0x60
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    .line 189
    :cond_520
    iget-object v5, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v4

    or-int/2addr v3, v4

    if-eqz v3, :cond_539

    :goto_52f
    invoke-static {v0}, Lcom/sun/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    :cond_539
    move v0, v2

    goto :goto_52f

    .line 183
    :cond_53b
    iget-object v5, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_554

    :goto_54a
    invoke-static {v0}, Lcom/sun/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_15

    :cond_554
    move v0, v2

    goto :goto_54a

    .line 316
    :cond_556
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->stringValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Type;->stringValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 316
    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;
    :try_end_574
    .catch Ljava/lang/ArithmeticException; {:try_start_b .. :try_end_574} :catch_577

    move-result-object v0

    goto/16 :goto_15

    .line 322
    :catch_577
    move-exception v0

    move-object v0, v1

    .line 323
    goto/16 :goto_15

    .line 167
    nop

    :pswitch_data_57c
    .packed-switch 0x60
        :pswitch_509  #00000060
        :pswitch_4f1  #00000061
        :pswitch_4d9  #00000062
        :pswitch_4c1  #00000063
        :pswitch_4aa  #00000064
        :pswitch_491  #00000065
        :pswitch_479  #00000066
        :pswitch_460  #00000067
        :pswitch_449  #00000068
        :pswitch_431  #00000069
        :pswitch_419  #0000006a
        :pswitch_401  #0000006b
        :pswitch_3ea  #0000006c
        :pswitch_3d1  #0000006d
        :pswitch_3b9  #0000006e
        :pswitch_3a0  #0000006f
        :pswitch_389  #00000070
        :pswitch_370  #00000071
        :pswitch_358  #00000072
        :pswitch_33f  #00000073
    .end packed-switch

    :pswitch_data_5a8
    .packed-switch 0x78
        :pswitch_328  #00000078
        :pswitch_30f  #00000079
        :pswitch_2f8  #0000007a
        :pswitch_2df  #0000007b
        :pswitch_2c8  #0000007c
        :pswitch_2af  #0000007d
        :pswitch_28f  #0000007e
        :pswitch_277  #0000007f
        :pswitch_257  #00000080
        :pswitch_23f  #00000081
        :pswitch_21f  #00000082
        :pswitch_207  #00000083
    .end packed-switch

    :pswitch_data_5c4
    .packed-switch 0x94
        :pswitch_1cb  #00000094
        :pswitch_167  #00000095
        :pswitch_167  #00000096
        :pswitch_103  #00000097
        :pswitch_103  #00000098
    .end packed-switch

    :pswitch_data_5d2
    .packed-switch 0x9f
        :pswitch_e9  #0000009f
        :pswitch_cf  #000000a0
        :pswitch_b5  #000000a1
        :pswitch_9b  #000000a2
        :pswitch_81  #000000a3
        :pswitch_68  #000000a4
        :pswitch_57  #000000a5
        :pswitch_42  #000000a6
    .end packed-switch

    :pswitch_data_5e6
    .packed-switch 0x10e
        :pswitch_328  #0000010e
        :pswitch_30f  #0000010f
        :pswitch_2f8  #00000110
        :pswitch_2df  #00000111
        :pswitch_2c8  #00000112
    .end packed-switch
.end method
