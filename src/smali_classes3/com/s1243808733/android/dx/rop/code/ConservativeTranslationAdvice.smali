.class public final Lcom/s1243808733/android/dx/rop/code/ConservativeTranslationAdvice;
.super Ljava/lang/Object;
.source "ConservativeTranslationAdvice.java"

# interfaces
.implements Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;


# static fields
.field public static final THE_ONE:Lcom/s1243808733/android/dx/rop/code/ConservativeTranslationAdvice;


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/s1243808733/android/dx/rop/code/ConservativeTranslationAdvice;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/rop/code/ConservativeTranslationAdvice;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/rop/code/ConservativeTranslationAdvice;->THE_ONE:Lcom/s1243808733/android/dx/rop/code/ConservativeTranslationAdvice;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxOptimalRegisterCount()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 53
    const v0, 0x7fffffff

    return v0
.end method

.method public hasConstantOperation(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public requiresSourcesInOrder(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 47
    const/4 v0, 0x0

    return v0
.end method
