.class Labcd/bO;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/fO;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/cO;->j6(Ljava/lang/String;Labcd/YN;ZLjava/security/Provider;Z)Labcd/aO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final DW:Labcd/zL;

.field private final FH:Labcd/YN;

.field final j6:Labcd/cO;


# direct methods
.method constructor <init>(Labcd/cO;Labcd/zL;Labcd/YN;)V
    .registers 4

    iput-object p1, p0, Labcd/bO;->j6:Labcd/cO;

    iput-object p2, p0, Labcd/bO;->DW:Labcd/zL;

    iput-object p3, p0, Labcd/bO;->FH:Labcd/YN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentType()Labcd/zL;
    .registers 2

    iget-object v0, p0, Labcd/bO;->DW:Labcd/zL;

    return-object v0
.end method

.method public j6(Ljava/io/OutputStream;)V
    .registers 3

    iget-object v0, p0, Labcd/bO;->FH:Labcd/YN;

    invoke-interface {v0, p1}, Labcd/YN;->j6(Ljava/io/OutputStream;)V

    return-void
.end method
