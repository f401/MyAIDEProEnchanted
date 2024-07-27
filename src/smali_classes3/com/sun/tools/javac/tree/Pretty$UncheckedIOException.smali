.class Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;
.super Ljava/lang/Error;
.source "Pretty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/Pretty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UncheckedIOException"
.end annotation


# static fields
.field static final serialVersionUID:J = -0x37f700a0258e64afL


# direct methods
.method constructor <init>(Ljava/io/IOException;)V
    .registers 3

    .line 140
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    return-void
.end method
