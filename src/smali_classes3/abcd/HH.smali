.class final Labcd/HH;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:Labcd/IE;

.field private final FH:Labcd/CH;

.field private final Hw:Labcd/lF;

.field private final VH:[Labcd/MH;

.field private final Zo:I

.field private final j6:Labcd/NH;

.field private final v5:I


# direct methods
.method constructor <init>(Labcd/NH;Labcd/IE;Labcd/CH;Labcd/lF;II[Labcd/MH;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/HH;->j6:Labcd/NH;

    iput-object p2, p0, Labcd/HH;->DW:Labcd/IE;

    iput-object p3, p0, Labcd/HH;->FH:Labcd/CH;

    iput-object p4, p0, Labcd/HH;->Hw:Labcd/lF;

    iput p5, p0, Labcd/HH;->v5:I

    iput p6, p0, Labcd/HH;->Zo:I

    iput-object p7, p0, Labcd/HH;->VH:[Labcd/MH;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 7

    iget-object v0, p0, Labcd/HH;->DW:Labcd/IE;

    invoke-virtual {v0}, Labcd/IE;->DW()Labcd/IE;

    move-result-object v0

    :try_start_6
    new-instance v1, Labcd/IH;

    iget-object v2, p0, Labcd/HH;->j6:Labcd/NH;

    iget-object v3, p0, Labcd/HH;->FH:Labcd/CH;

    invoke-direct {v1, v2, v3, v0}, Labcd/IH;-><init>(Labcd/NH;Labcd/CH;Labcd/IE;)V

    iget-object v2, p0, Labcd/HH;->Hw:Labcd/lF;

    iget-object v3, p0, Labcd/HH;->VH:[Labcd/MH;

    iget v4, p0, Labcd/HH;->Zo:I

    iget v5, p0, Labcd/HH;->v5:I

    invoke-virtual {v1, v2, v3, v4, v5}, Labcd/IH;->j6(Labcd/LE;[Labcd/MH;II)V
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_24

    invoke-virtual {v0}, Labcd/IE;->FH()V

    iget-object v0, p0, Labcd/HH;->Hw:Labcd/lF;

    invoke-virtual {v0}, Labcd/lF;->DW()V

    const/4 v0, 0x0

    return-object v0

    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Labcd/IE;->FH()V

    iget-object v0, p0, Labcd/HH;->Hw:Labcd/lF;

    invoke-virtual {v0}, Labcd/lF;->DW()V

    throw v1
.end method
