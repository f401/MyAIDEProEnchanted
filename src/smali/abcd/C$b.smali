.class Labcd/C$b;
.super Labcd/C$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/C$a;-><init>()V

    return-void
.end method
