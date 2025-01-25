.class Labcd/A$c;
.super Labcd/A$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/A$b;-><init>()V

    return-void
.end method
