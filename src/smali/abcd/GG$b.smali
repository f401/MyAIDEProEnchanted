.class Labcd/GG$b;
.super Labcd/GG$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/GG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final DW:Labcd/IG;


# direct methods
.method constructor <init>(Labcd/IG;)V
    .registers 3

    invoke-virtual {p1}, Labcd/IG;->EQ()Labcd/XG;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/GG$a;-><init>(Labcd/GG;)V

    iput-object p1, p0, Labcd/GG$b;->DW:Labcd/IG;

    return-void
.end method


# virtual methods
.method j6()V
    .registers 2

    iget-object v0, p0, Labcd/GG$b;->DW:Labcd/IG;

    invoke-virtual {v0}, Labcd/UE;->j6()V

    return-void
.end method
