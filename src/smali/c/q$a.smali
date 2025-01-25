.class public final Lc/q$a;
.super Lc/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public l:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    invoke-direct {p0, p1}, Lc/q;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc/q$a;->l:Z

    return-void
.end method


# virtual methods
.method public final d(I)V
    .registers 3

    iget-boolean v0, p0, Lc/q$a;->l:Z

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc/q$a;->l:Z

    goto :goto_b

    :cond_8
    invoke-super {p0, p1}, Lc/q;->d(I)V

    :goto_b
    return-void
.end method
