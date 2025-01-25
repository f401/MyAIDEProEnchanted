.class public final Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;
.super Ljava/lang/Object;
.source "DexTranslationAdvice.java"

# interfaces
.implements Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;


# static fields
.field private static final MIN_INVOKE_IN_ORDER:I = 0x6

.field public static final NO_SOURCES_IN_ORDER:Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;

.field public static final THE_ONE:Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;


# instance fields
.field private final disableSourcesInOrder:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;->THE_ONE:Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;

    .line 33
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;-><init>(Z)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;->NO_SOURCES_IN_ORDER:Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;->disableSourcesInOrder:Z

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean p1, p0, Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;->disableSourcesInOrder:Z

    return-void
.end method

.method private totalRopWidth(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)I
    .registers 6

    .line 118
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v1, v0, :cond_14

    .line 122
    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_14
    return v2
.end method


# virtual methods
.method public getMaxOptimalRegisterCount()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method

.method public hasConstantOperation(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z
    .registers 7

    .line 60
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    return v2

    .line 65
    :cond_a
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    instance-of v0, v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    if-nez v0, :cond_2e

    .line 67
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object p3

    instance-of p3, p3, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    if-eqz p3, :cond_2d

    .line 68
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result p1

    const/16 p3, 0xf

    if-ne p1, p3, :cond_2d

    .line 69
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    .line 70
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->fitsIn16Bits()Z

    move-result p1

    return p1

    :cond_2d
    return v2

    .line 76
    :cond_2e
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object p2

    check-cast p2, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    .line 78
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result p1

    packed-switch p1, :pswitch_data_54

    :pswitch_3b  #0x13
    return v2

    .line 92
    :pswitch_3c  #0x17, 0x18, 0x19
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->fitsIn8Bits()Z

    move-result p1

    return p1

    .line 95
    :pswitch_41  #0xf
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result p1

    neg-int p1, p1

    invoke-static {p1}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->fitsIn16Bits()Z

    move-result p1

    return p1

    .line 87
    :pswitch_4f  #0xe, 0x10, 0x11, 0x12, 0x14, 0x15, 0x16
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->fitsIn16Bits()Z

    move-result p1

    return p1

    :pswitch_data_54
    .packed-switch 0xe
        :pswitch_4f  #0000000e
        :pswitch_41  #0000000f
        :pswitch_4f  #00000010
        :pswitch_4f  #00000011
        :pswitch_4f  #00000012
        :pswitch_3b  #00000013
        :pswitch_4f  #00000014
        :pswitch_4f  #00000015
        :pswitch_4f  #00000016
        :pswitch_3c  #00000017
        :pswitch_3c  #00000018
        :pswitch_3c  #00000019
    .end packed-switch
.end method

.method public requiresSourcesInOrder(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Z
    .registers 4

    .line 107
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;->disableSourcesInOrder:Z

    if-nez v0, :cond_13

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/Rop;->isCallLike()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 108
    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;->totalRopWidth(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)I

    move-result p1

    const/4 p2, 0x6

    if-lt p1, p2, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    return p1
.end method
