.class Labcd/zH$a;
.super Labcd/AE$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/zH;
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


# instance fields
.field final EQ:[B


# direct methods
.method constructor <init>(Labcd/YD;[B)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/AE$a;-><init>(Labcd/YD;)V

    iput-object p2, p0, Labcd/zH$a;->EQ:[B

    return-void
.end method
