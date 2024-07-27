.class Labcd/fG$a;
.super Labcd/fG;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/fG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Labcd/fG;-><init>(Labcd/qG;Ljava/lang/String;I)V

    return-void
.end method
