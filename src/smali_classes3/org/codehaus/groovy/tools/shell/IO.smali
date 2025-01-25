.class public Lorg/codehaus/groovy/tools/shell/IO;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/groovy/tools/shell/IO$Verbosity;
    }
.end annotation


# instance fields
.field public final DW:Ljava/io/OutputStream;

.field public final FH:Ljava/io/OutputStream;

.field public final Hw:Ljava/io/Reader;

.field public final Zo:Ljava/io/PrintWriter;

.field public final j6:Ljava/io/InputStream;

.field public final v5:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>()V
    .registers 4

    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {p0, v0, v1, v2}, Lorg/codehaus/groovy/tools/shell/IO;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codehaus/groovy/tools/shell/IO;->j6:Ljava/io/InputStream;

    iput-object p2, p0, Lorg/codehaus/groovy/tools/shell/IO;->DW:Ljava/io/OutputStream;

    iput-object p3, p0, Lorg/codehaus/groovy/tools/shell/IO;->FH:Ljava/io/OutputStream;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/codehaus/groovy/tools/shell/IO;->Hw:Ljava/io/Reader;

    new-instance p1, Lorg/fusesource/jansi/AnsiRenderWriter;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lorg/fusesource/jansi/AnsiRenderWriter;-><init>(Ljava/io/OutputStream;Z)V

    iput-object p1, p0, Lorg/codehaus/groovy/tools/shell/IO;->v5:Ljava/io/PrintWriter;

    new-instance p1, Lorg/fusesource/jansi/AnsiRenderWriter;

    invoke-direct {p1, p3, v0}, Lorg/fusesource/jansi/AnsiRenderWriter;-><init>(Ljava/io/OutputStream;Z)V

    iput-object p1, p0, Lorg/codehaus/groovy/tools/shell/IO;->Zo:Ljava/io/PrintWriter;

    return-void
.end method
