.class final Lcom/google/common/hash/LongAddables$2;
.super Ljava/lang/Object;
.source "LongAddables.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/LongAddables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Lcom/google/common/hash/LongAddable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/common/hash/LongAddable;
    .registers 3

    .line 44
    new-instance v0, Lcom/google/common/hash/LongAddables$PureJavaLongAddable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/hash/LongAddables$PureJavaLongAddable;-><init>(Lcom/google/common/hash/LongAddables$1;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 41
    invoke-virtual {p0}, Lcom/google/common/hash/LongAddables$2;->get()Lcom/google/common/hash/LongAddable;

    move-result-object v0

    return-object v0
.end method
