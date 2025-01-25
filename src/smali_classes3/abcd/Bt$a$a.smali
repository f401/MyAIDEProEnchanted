.class Labcd/Bt$a$a;
.super Labcd/qt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Bt$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final j6:Labcd/Bt$a;


# direct methods
.method public constructor <init>(Labcd/Bt$a;)V
    .registers 2

    iput-object p1, p0, Labcd/Bt$a$a;->j6:Labcd/Bt$a;

    invoke-direct {p0}, Labcd/qt;-><init>()V

    return-void
.end method


# virtual methods
.method public j6()I
    .registers 2

    iget-object v0, p0, Labcd/Bt$a$a;->j6:Labcd/Bt$a;

    iget-object v0, v0, Labcd/Bt$a;->Zo:Labcd/Bt;

    invoke-static {v0}, Labcd/Bt;->DW(Labcd/Bt;)I

    move-result v0

    return v0
.end method

.method public j6(Labcd/bs;)Labcd/bs;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v0

    iget-object v1, p0, Labcd/Bt$a$a;->j6:Labcd/Bt$a;

    invoke-static {v1}, Labcd/Bt$a;->DW(Labcd/Bt$a;)[Labcd/bs;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/bs;->FH(I)Labcd/bs;

    move-result-object p1

    return-object p1
.end method
