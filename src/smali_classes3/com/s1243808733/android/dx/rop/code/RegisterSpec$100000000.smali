.class Lcom/s1243808733/android/dx/rop/code/RegisterSpec$100000000;
.super Ljava/lang/ThreadLocal;
.source "RegisterSpec.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 44
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;-><init>()V

    return-object v0
.end method

.method protected bridge initialValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$100000000;->initialValue()Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;

    move-result-object v0

    return-object v0
.end method
