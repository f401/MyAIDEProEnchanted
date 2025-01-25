.class public Labcd/VL;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/GL;


# instance fields
.field private j6:Labcd/JL;


# direct methods
.method constructor <init>(Labcd/JL;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/VL;->j6:Labcd/JL;

    return-void
.end method


# virtual methods
.method public DW()Labcd/EL;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Labcd/VL;->j6()Labcd/EL;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public j6()Labcd/EL;
    .registers 3

    new-instance v0, Labcd/UL;

    iget-object v1, p0, Labcd/VL;->j6:Labcd/JL;

    invoke-virtual {v1}, Labcd/JL;->DW()Labcd/rL;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/UL;-><init>(Labcd/rL;)V

    return-object v0
.end method
