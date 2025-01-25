.class public Labcd/ZL;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/ML;


# instance fields
.field private DW:I

.field private FH:Labcd/JL;

.field private j6:Z


# direct methods
.method constructor <init>(ZILabcd/JL;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Labcd/ZL;->j6:Z

    iput p2, p0, Labcd/ZL;->DW:I

    iput-object p3, p0, Labcd/ZL;->FH:Labcd/JL;

    return-void
.end method


# virtual methods
.method public DW()Labcd/EL;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Labcd/ZL;->j6()Labcd/EL;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Labcd/DL;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/DL;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public j6()Labcd/EL;
    .registers 4

    iget-object v0, p0, Labcd/ZL;->FH:Labcd/JL;

    iget-boolean v1, p0, Labcd/ZL;->j6:Z

    iget v2, p0, Labcd/ZL;->DW:I

    invoke-virtual {v0, v1, v2}, Labcd/JL;->j6(ZI)Labcd/EL;

    move-result-object v0

    return-object v0
.end method
