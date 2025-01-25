.class public final Labcd/Nx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/a$d$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Nx$a;
    }
.end annotation


# static fields
.field public static final j6:Labcd/Nx;


# instance fields
.field private final DW:Z

.field private final FH:Z

.field private final Hw:Ljava/lang/String;

.field private final VH:Z

.field private final Zo:Ljava/lang/String;

.field private final gn:Ljava/lang/Long;

.field private final u7:Ljava/lang/Long;

.field private final v5:Z


# direct methods
.method static constructor <clinit>()V
    .registers 10

    new-instance v0, Labcd/Nx$a;

    invoke-direct {v0}, Labcd/Nx$a;-><init>()V

    new-instance v0, Labcd/Nx;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Labcd/Nx;-><init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V

    sput-object v0, Labcd/Nx;->j6:Labcd/Nx;

    return-void
.end method

.method private constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Labcd/Nx;->DW:Z

    iput-boolean p1, p0, Labcd/Nx;->FH:Z

    const/4 p2, 0x0

    iput-object p2, p0, Labcd/Nx;->Hw:Ljava/lang/String;

    iput-boolean p1, p0, Labcd/Nx;->v5:Z

    iput-boolean p1, p0, Labcd/Nx;->VH:Z

    iput-object p2, p0, Labcd/Nx;->Zo:Ljava/lang/String;

    iput-object p2, p0, Labcd/Nx;->gn:Ljava/lang/Long;

    iput-object p2, p0, Labcd/Nx;->u7:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final DW()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/Nx;->Zo:Ljava/lang/String;

    return-object v0
.end method

.method public final FH()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Labcd/Nx;->u7:Ljava/lang/Long;

    return-object v0
.end method

.method public final Hw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/Nx;->Hw:Ljava/lang/String;

    return-object v0
.end method

.method public final VH()Z
    .registers 2

    iget-boolean v0, p0, Labcd/Nx;->DW:Z

    return v0
.end method

.method public final Zo()Z
    .registers 2

    iget-boolean v0, p0, Labcd/Nx;->FH:Z

    return v0
.end method

.method public final gn()Z
    .registers 2

    iget-boolean v0, p0, Labcd/Nx;->VH:Z

    return v0
.end method

.method public final j6()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Labcd/Nx;->gn:Ljava/lang/Long;

    return-object v0
.end method

.method public final v5()Z
    .registers 2

    iget-boolean v0, p0, Labcd/Nx;->v5:Z

    return v0
.end method
