.class Labcd/FP;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/zP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/GP;->j6(Labcd/wN;)Labcd/zP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final DW:Labcd/wN;

.field private final FH:Labcd/GP$a;

.field final j6:Labcd/GP;


# direct methods
.method constructor <init>(Labcd/GP;Labcd/wN;Labcd/GP$a;)V
    .registers 4

    iput-object p1, p0, Labcd/FP;->j6:Labcd/GP;

    iput-object p2, p0, Labcd/FP;->DW:Labcd/wN;

    iput-object p3, p0, Labcd/FP;->FH:Labcd/GP$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()Labcd/wN;
    .registers 2

    iget-object v0, p0, Labcd/FP;->DW:Labcd/wN;

    return-object v0
.end method

.method public FH()[B
    .registers 2

    iget-object v0, p0, Labcd/FP;->FH:Labcd/GP$a;

    invoke-virtual {v0}, Labcd/GP$a;->j6()[B

    move-result-object v0

    return-object v0
.end method

.method public j6()Ljava/io/OutputStream;
    .registers 2

    iget-object v0, p0, Labcd/FP;->FH:Labcd/GP$a;

    return-object v0
.end method
