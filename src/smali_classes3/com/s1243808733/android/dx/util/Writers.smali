.class public final Lcom/s1243808733/android/dx/util/Writers;
.super Ljava/lang/Object;
.source "Writers.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static printWriterFor(Ljava/io/Writer;)Ljava/io/PrintWriter;
    .registers 2

    .line 42
    instance-of v0, p0, Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 43
    check-cast p0, Ljava/io/PrintWriter;

    .line 46
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object p0, v0

    goto :goto_0
.end method
