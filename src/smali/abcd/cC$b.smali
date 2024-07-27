.class Labcd/cC$b;
.super Labcd/cC;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/cC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final j6:Labcd/IE;


# direct methods
.method constructor <init>(Labcd/IE;)V
    .registers 2

    invoke-direct {p0}, Labcd/cC;-><init>()V

    iput-object p1, p0, Labcd/cC$b;->j6:Labcd/IE;

    return-void
.end method


# virtual methods
.method public DW(Ljava/lang/String;Labcd/yE;)J
    .registers 5

    iget-object v0, p0, Labcd/cC$b;->j6:Labcd/IE;

    const/4 v1, 0x3

    invoke-virtual {v0, p2, v1}, Labcd/IE;->DW(Labcd/YD;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public j6(Ljava/lang/String;Labcd/yE;)Labcd/FE;
    .registers 5

    iget-object v0, p0, Labcd/cC$b;->j6:Labcd/IE;

    const/4 v1, 0x3

    invoke-virtual {v0, p2, v1}, Labcd/IE;->Hw(Labcd/YD;I)Labcd/FE;

    move-result-object v0

    return-object v0
.end method
