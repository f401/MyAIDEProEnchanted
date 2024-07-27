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
.method static final constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;->THE_ONE:Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;

    new-instance v0, Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;-><init>(Z)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;->NO_SOURCES_IN_ORDER:Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;->disableSourcesInOrder:Z

    return-void
.end method

.method constructor <init>(Z)V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean p1, p0, Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;->disableSourcesInOrder:Z

    return-void
.end method

.method private totalRopWidth(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)I
    .registers 6

    const/4 v1, 0x0

    .line 118
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v3

    move v0, v1

    move v2, v1

    .line 121
    :goto_0
    if-lt v0, v3, :cond_0

    .line 125
    return v2

    .line 122
    :cond_0
    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v1

    .line 121
    add-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v2

    move v2, v1

    goto :goto_0
.end method


# virtual methods
.method public getMaxOptimalRegisterCount()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 131
    const/16 v0, 0x10

    return v0
.end method

.method public hasConstantOperation(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z
    .registers 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    .line 60
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    if-eq v0, v2, :cond_0

    move v0, v1

    .line 98
    :goto_0
    return v0

    .line 65
    :cond_0
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    instance-of v0, v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    if-nez v0, :cond_2

    .line 67
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    instance-of v0, v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    const/16 v2, 0xf

    if-ne v0, v2, :cond_1

    .line 69
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    .line 70
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->fitsIn16Bits()Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 72
    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    .line 78
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 98
    goto :goto_0

    .line 87
    :pswitch_1
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->fitsIn16Bits()Z

    move-result v0

    goto :goto_0

    .line 92
    :pswitch_2
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->fitsIn8Bits()Z

    move-result v0

    goto :goto_0

    .line 95
    :pswitch_3
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v0

    neg-int v0, v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->fitsIn16Bits()Z

    move-result v0

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public requiresSourcesInOrder(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Z
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 107
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;->disableSourcesInOrder:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/Rop;->isCallLike()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;->totalRopWidth(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
