.class public Labcd/PL;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/nL;


# instance fields
.field private final DW:Labcd/JL;

.field private final j6:I


# direct methods
.method constructor <init>(ILabcd/JL;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Labcd/PL;->j6:I

    iput-object p2, p0, Labcd/PL;->DW:Labcd/JL;

    return-void
.end method


# virtual methods
.method public DW()Labcd/EL;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Labcd/PL;->j6()Labcd/EL;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Labcd/DL;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/DL;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public j6()Labcd/EL;
    .registers 4

    new-instance v0, Labcd/OL;

    iget v1, p0, Labcd/PL;->j6:I

    iget-object v2, p0, Labcd/PL;->DW:Labcd/JL;

    invoke-virtual {v2}, Labcd/JL;->DW()Labcd/rL;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Labcd/OL;-><init>(ILabcd/rL;)V

    return-object v0
.end method
