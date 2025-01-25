.class final Labcd/VF;
.super Labcd/XF;


# instance fields
.field private final j6:Labcd/XF;


# direct methods
.method constructor <init>(Labcd/XF;)V
    .registers 2

    invoke-direct {p0}, Labcd/XF;-><init>()V

    iput-object p1, p0, Labcd/VF;->j6:Labcd/XF;

    return-void
.end method


# virtual methods
.method DW()I
    .registers 2

    iget-object v0, p0, Labcd/VF;->j6:Labcd/XF;

    invoke-virtual {v0}, Labcd/XF;->DW()I

    move-result v0

    return v0
.end method

.method j6()Labcd/dG;
    .registers 3

    :cond_0
    iget-object v0, p0, Labcd/VF;->j6:Labcd/XF;

    invoke-virtual {v0}, Labcd/XF;->j6()Labcd/dG;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget v1, v0, Labcd/iG;->EQ:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_0

    return-object v0
.end method
