.class Labcd/A$e;
.super Labcd/A$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/A$d;-><init>()V

    return-void
.end method
