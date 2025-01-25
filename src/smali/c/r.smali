.class public final Lc/r;
.super Ljava/lang/IllegalStateException;
.source "SourceFile"


# instance fields
.field public final a:I

.field public b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lc/r;->a:I

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .registers 4

    .line 2
    iput p3, p0, Lc/r;->a:I

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lc/r;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final getCause()Ljava/lang/Throwable;
    .registers 3

    iget v0, p0, Lc/r;->a:I

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    .line 3
    iget-object v0, p0, Lc/r;->b:Ljava/lang/Throwable;

    return-object v0

    .line 1
    :cond_a
    iget-object v0, p0, Lc/r;->b:Ljava/lang/Throwable;

    return-object v0

    .line 2
    :cond_d
    iget-object v0, p0, Lc/r;->b:Ljava/lang/Throwable;

    return-object v0
.end method
