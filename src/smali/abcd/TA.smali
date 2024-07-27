.class enum Labcd/TA;
.super Labcd/WA$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/WA$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Labcd/WA$a;-><init>(Ljava/lang/String;ILabcd/WA$a;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Ok"

    return-object v0
.end method
