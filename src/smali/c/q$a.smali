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
    .locals 1

    invoke-direct {p0, p1}, Lc/q;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/q$a;->l:Z

    return-void
.end method


# virtual methods
.method public final d(I)V
    .locals 1

    iget-boolean v0, p0, Lc/q$a;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/q$a;->l:Z

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lc/q;->d(I)V

    goto :goto_0
.end method
