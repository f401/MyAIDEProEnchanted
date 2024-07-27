.class public Lcom/s1243808733/aide/functions/r8merger/R8Log;
.super Ljava/io/PrintStream;
.source "R8Log.java"


# instance fields
.field fos:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/FileOutputStream;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 12
    iput-object p1, p0, Lcom/s1243808733/aide/functions/r8merger/R8Log;->fos:Ljava/io/FileOutputStream;

    return-void
.end method
