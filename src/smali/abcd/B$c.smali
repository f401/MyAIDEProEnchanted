.class Labcd/B$c;
.super Labcd/B$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/B;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/B$d;-><init>()V

    return-void
.end method
