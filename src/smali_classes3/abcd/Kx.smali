.class final Labcd/Kx;
.super Ljava/lang/ref/WeakReference;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field private final j6:I


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/ref/ReferenceQueue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    if-eqz p1, :cond_c

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Labcd/Kx;->j6:I

    return-void

    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The referent cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Labcd/Kx;

    if-eq v0, v1, :cond_b

    goto :goto_22

    :cond_b
    const/4 v0, 0x1

    if-ne p0, p1, :cond_f

    return v0

    :cond_f
    check-cast p1, Labcd/Kx;

    iget v1, p0, Labcd/Kx;->j6:I

    iget v2, p1, Labcd/Kx;->j6:I

    if-ne v1, v2, :cond_22

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne v1, p1, :cond_22

    return v0

    :cond_22
    :goto_22
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Labcd/Kx;->j6:I

    return v0
.end method
