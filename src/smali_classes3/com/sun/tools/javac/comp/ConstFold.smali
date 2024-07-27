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
    if-eqz p0, :cond_0

    sget-object v0, Lcom/sun/tools/javac/comp/ConstFold;->one:Ljava/lang/Integer;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sun/tools/javac/comp/ConstFold;->zero:Ljava/lang/Integer;

    goto :goto_0
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
    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/sun/tools/javac/comp/ConstFold;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/comp/ConstFold;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 55
    :cond_0
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

    if-ne v0, v1, :cond_0

    .line 356
    :goto_0
    return-object p1

    .line 337
    :cond_0
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_1

    .line 338
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v0

    .line 339
    iget v1, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    packed-switch v1, :pswitch_data_0

    :cond_1
    move-object p1, p2

    .line 356
    goto :goto_0

    .line 353
    :pswitch_0
    iget-object v1, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    goto :goto_0

    .line 351
    :pswitch_1
    iget-object v1, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    goto :goto_0

    .line 349
    :pswitch_2
    iget-object v1, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    goto :goto_0

    .line 347
    :pswitch_3
    iget-object v1, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    goto :goto_0

    .line 345
    :pswitch_4
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

    goto :goto_0

    .line 343
    :pswitch_5
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

    goto :goto_0

    .line 341
    :pswitch_6
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

    goto/16 :goto_0

    .line 339
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
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

    if-ne v0, v1, :cond_0

    .line 89
    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/comp/ConstFold;->fold1(ILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    .line 90
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 91
    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v1, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iget-object v1, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/tools/javac/comp/ConstFold;->fold2(ILcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_1
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
    :try_start_0
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v3

    .line 107
    if-eqz p1, :cond_0

    const/16 v4, 0x101

    if-eq p1, v4, :cond_9

    const/16 v4, 0x82

    if-eq p1, v4, :cond_8

    const/16 v4, 0x83

    if-eq p1, v4, :cond_7

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    move-object p2, v0

    .line 144
    :cond_0
    :goto_0
    return-object p2

    .line 125
    :pswitch_0
    iget-object v4, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/sun/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 123
    :pswitch_1
    iget-object v4, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/sun/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_2

    .line 127
    :pswitch_2
    iget-object v4, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_3

    :goto_3
    invoke-static {v1}, Lcom/sun/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_3

    .line 121
    :pswitch_3
    iget-object v4, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_4

    :goto_4
    invoke-static {v1}, Lcom/sun/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_4

    .line 119
    :pswitch_4
    iget-object v4, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_5

    :goto_5
    invoke-static {v1}, Lcom/sun/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_5

    .line 117
    :pswitch_5
    iget-object v4, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_6

    :goto_6
    invoke-static {v1}, Lcom/sun/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_6

    .line 138
    :pswitch_6
    iget-object v1, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    new-instance v2, Ljava/lang/Double;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide v4

    neg-double v4, v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    goto/16 :goto_0

    .line 135
    :pswitch_7
    iget-object v1, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    new-instance v2, Ljava/lang/Float;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result v3

    neg-float v3, v3

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    goto/16 :goto_0

    .line 130
    :pswitch_8
    iget-object v1, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    new-instance v2, Ljava/lang/Long;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v4

    neg-long v4, v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    goto/16 :goto_0

    .line 111
    :pswitch_9
    iget-object v1, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v2

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    goto/16 :goto_0

    .line 132
    :cond_7
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

    goto/16 :goto_0

    .line 113
    :cond_8
    iget-object v1, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v2

    xor-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    goto/16 :goto_0

    .line 115
    :cond_9
    iget-object v4, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_a

    :goto_7
    invoke-static {v1}, Lcom/sun/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto/16 :goto_0

    :cond_a
    move v1, v2

    goto :goto_7

    .line 143
    :catch_0
    move-exception v1

    move-object p2, v0

    .line 144
    goto/16 :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x74
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x99
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
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

    if-le p1, v3, :cond_1

    .line 161
    shr-int/lit8 v0, p1, 0x9

    :try_start_0
    invoke-virtual {p0, v0, p2, p3}, Lcom/sun/tools/javac/comp/ConstFold;->fold2(ILcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 323
    :goto_0
    return-object v0

    .line 163
    :cond_0
    and-int/lit16 v2, p1, 0x1ff

    invoke-virtual {p0, v2, v0}, Lcom/sun/tools/javac/comp/ConstFold;->fold1(ILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v3

    .line 166
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v4

    .line 167
    const/16 v5, 0x100

    if-eq p1, v5, :cond_1a

    const/16 v5, 0x102

    if-eq p1, v5, :cond_18

    const/16 v5, 0x103

    if-eq p1, v5, :cond_16

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    move-object v0, v1

    .line 319
    goto :goto_0

    .line 314
    :pswitch_0
    iget-object v5, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-static {v0}, Lcom/sun/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    .line 312
    :pswitch_1
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/sun/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_0

    .line 213
    :pswitch_2
    iget-object v5, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    .line 214
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v4

    if-gt v3, v4, :cond_3

    :goto_2
    invoke-static {v0}, Lcom/sun/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object v0

    .line 213
    invoke-virtual {v5, v0}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 214
    goto :goto_2

    .line 210
    :pswitch_3
    iget-object v5, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    .line 211
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v4

    if-le v3, v4, :cond_4

    :goto_3
    invoke-static {v0}, Lcom/sun/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object v0

    .line 210
    invoke-virtual {v5, v0}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 211
    goto :goto_3

    .line 216
    :pswitch_4
    iget-object v5, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    .line 217
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v4

    if-lt v3, v4, :cond_5

    :goto_4
    invoke-static {v0}, Lcom/sun/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object v0

    .line 216
    invoke-virtual {v5, v0}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 217
    goto :goto_4

    .line 207
    :pswitch_5
    iget-object v5, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    .line 208
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v4

    if-ge v3, v4, :cond_6

    :goto_5
    invoke-static {v0}, Lcom/sun/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object v0

    .line 207
    invoke-virtual {v5, v0}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 208
    goto :goto_5

    .line 204
    :pswitch_6
    iget-object v5, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    .line 205
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v4

    if-eq v3, v4, :cond_7

    :goto_6
    invoke-static {v0}, Lcom/sun/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object v0

    .line 204
    invoke-virtual {v5, v0}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 205
    goto :goto_6

    .line 201
    :pswitch_7
    iget-object v5, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    .line 202
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v4

    if-ne v3, v4, :cond_8

    :goto_7
    invoke-static {v0}, Lcom/sun/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object v0

    .line 201
    invoke-virtual {v5, v0}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 202
    goto :goto_7

    .line 301
    :pswitch_8
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide v6

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide v8

    cmpg-double v0, v6, v8

    if-gez v0, :cond_9

    .line 302
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    sget-object v2, Lcom/sun/tools/javac/comp/ConstFold;->minusOne:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_0

    .line 303
    :cond_9
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide v6

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide v8

    cmpl-double v0, v6, v8

    if-lez v0, :cond_a

    .line 304
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    sget-object v2, Lcom/sun/tools/javac/comp/ConstFold;->one:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_0

    .line 305
    :cond_a
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-nez v0, :cond_b

    .line 306
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    sget-object v2, Lcom/sun/tools/javac/comp/ConstFold;->zero:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_0

    .line 307
    :cond_b
    const/16 v0, 0x98

    if-ne p1, v0, :cond_c

    .line 308
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    sget-object v2, Lcom/sun/tools/javac/comp/ConstFold;->one:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_0

    .line 310
    :cond_c
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    sget-object v2, Lcom/sun/tools/javac/comp/ConstFold;->minusOne:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_0

    .line 275
    :pswitch_9
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result v0

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_d

    .line 276
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    sget-object v2, Lcom/sun/tools/javac/comp/ConstFold;->minusOne:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_0

    .line 277
    :cond_d
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result v0

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_e

    .line 278
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    sget-object v2, Lcom/sun/tools/javac/comp/ConstFold;->one:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_0

    .line 279
    :cond_e
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result v0

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_f

    .line 280
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    sget-object v2, Lcom/sun/tools/javac/comp/ConstFold;->zero:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_0

    .line 281
    :cond_f
    const/16 v0, 0x96

    if-ne p1, v0, :cond_10

    .line 282
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    sget-object v2, Lcom/sun/tools/javac/comp/ConstFold;->one:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_0

    .line 284
    :cond_10
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    sget-object v2, Lcom/sun/tools/javac/comp/ConstFold;->minusOne:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_0

    .line 253
    :pswitch_a
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v6

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-gez v0, :cond_11

    .line 254
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    sget-object v2, Lcom/sun/tools/javac/comp/ConstFold;->minusOne:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_0

    .line 255
    :cond_11
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_12

    .line 256
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    sget-object v2, Lcom/sun/tools/javac/comp/ConstFold;->one:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_0

    .line 258
    :cond_12
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    sget-object v2, Lcom/sun/tools/javac/comp/ConstFold;->zero:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_0

    .line 241
    :pswitch_b
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

    goto/16 :goto_0

    .line 191
    :pswitch_c
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v0, v6, :cond_13

    .line 192
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    .line 193
    :goto_8
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    xor-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_0

    .line 192
    :cond_13
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    goto :goto_8

    .line 238
    :pswitch_d
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

    goto/16 :goto_0

    .line 185
    :pswitch_e
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v0, v6, :cond_14

    .line 186
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    .line 187
    :goto_9
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_0

    .line 186
    :cond_14
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    goto :goto_9

    .line 235
    :pswitch_f
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

    goto/16 :goto_0

    .line 179
    :pswitch_10
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v0, v6, :cond_15

    .line 180
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    .line 181
    :goto_a
    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    and-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_0

    .line 180
    :cond_15
    iget-object v0, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    goto :goto_a

    .line 250
    :pswitch_11
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

    goto/16 :goto_0

    .line 199
    :pswitch_12
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

    goto/16 :goto_0

    .line 247
    :pswitch_13
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

    goto/16 :goto_0

    .line 197
    :pswitch_14
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

    goto/16 :goto_0

    .line 244
    :pswitch_15
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

    goto/16 :goto_0

    .line 195
    :pswitch_16
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

    goto/16 :goto_0

    .line 298
    :pswitch_17
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

    goto/16 :goto_0

    .line 272
    :pswitch_18
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

    goto/16 :goto_0

    .line 232
    :pswitch_19
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

    goto/16 :goto_0

    .line 177
    :pswitch_1a
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

    goto/16 :goto_0

    .line 295
    :pswitch_1b
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

    goto/16 :goto_0

    .line 269
    :pswitch_1c
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

    goto/16 :goto_0

    .line 229
    :pswitch_1d
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

    goto/16 :goto_0

    .line 175
    :pswitch_1e
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

    goto/16 :goto_0

    .line 292
    :pswitch_1f
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

    goto/16 :goto_0

    .line 266
    :pswitch_20
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

    goto/16 :goto_0

    .line 226
    :pswitch_21
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

    goto/16 :goto_0

    .line 173
    :pswitch_22
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

    goto/16 :goto_0

    .line 289
    :pswitch_23
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

    goto/16 :goto_0

    .line 263
    :pswitch_24
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

    goto/16 :goto_0

    .line 223
    :pswitch_25
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

    goto/16 :goto_0

    .line 171
    :pswitch_26
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

    goto/16 :goto_0

    .line 286
    :pswitch_27
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

    goto/16 :goto_0

    .line 260
    :pswitch_28
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

    goto/16 :goto_0

    .line 220
    :pswitch_29
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

    goto/16 :goto_0

    .line 169
    :pswitch_2a
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

    goto/16 :goto_0

    .line 189
    :cond_16
    iget-object v5, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v4

    or-int/2addr v3, v4

    if-eqz v3, :cond_17

    :goto_b
    invoke-static {v0}, Lcom/sun/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_0

    :cond_17
    move v0, v2

    goto :goto_b

    .line 183
    :cond_18
    iget-object v5, p0, Lcom/sun/tools/javac/comp/ConstFold;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v4}, Lcom/sun/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_19

    :goto_c
    invoke-static {v0}, Lcom/sun/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_0

    :cond_19
    move v0, v2

    goto :goto_c

    .line 316
    :cond_1a
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
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 322
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 323
    goto/16 :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x78
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x94
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x9f
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x10e
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method
