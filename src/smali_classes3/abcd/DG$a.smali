.class Labcd/DG$a;
.super Labcd/AE$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/DG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Labcd/AE$a;"
    }
.end annotation


# direct methods
.method constructor <init>(Labcd/YD;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/AE$a;-><init>(Labcd/YD;)V

    return-void
.end method
