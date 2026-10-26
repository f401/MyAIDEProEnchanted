.class public final Lcom/s1243808733/android/dx/rop/code/ConservativeTranslationAdvice;
.super Ljava/lang/Object;
.source "ConservativeTranslationAdvice.java"

# interfaces
.implements Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;


# static fields
.field public static final THE_ONE:Lcom/s1243808733/android/dx/rop/code/ConservativeTranslationAdvice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/ConservativeTranslationAdvice;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/rop/code/ConservativeTranslationAdvice;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/rop/code/ConservativeTranslationAdvice;->THE_ONE:Lcom/s1243808733/android/dx/rop/code/ConservativeTranslationAdvice;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxOptimalRegisterCount()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public hasConstantOperation(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public requiresSourcesInOrder(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
