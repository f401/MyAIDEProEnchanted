.class public Labcd/Hz$c;
.super Ljava/lang/RuntimeException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Hz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method protected constructor <init>(Ljava/io/IOException;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getCause()Ljava/io/IOException;
    .registers 2

    invoke-super {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    return-object v0
.end method

.method public bridge synthetic getCause()Ljava/lang/Throwable;
    .registers 2

    invoke-virtual {p0}, Labcd/Hz$c;->getCause()Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method
