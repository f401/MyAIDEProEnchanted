.class public Labcd/yF;
.super Labcd/vF;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/yF$a;
    }
.end annotation


# instance fields
.field private final VH:I

.field private final Zo:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Labcd/vF;-><init>()V

    iput-object p1, p0, Labcd/yF;->Zo:Ljava/lang/String;

    iput p2, p0, Labcd/yF;->VH:I

    return-void
.end method


# virtual methods
.method public j6(Labcd/UE;)Labcd/wF;
    .registers 4

    new-instance v0, Labcd/yF$a;

    iget v1, p0, Labcd/yF;->VH:I

    invoke-direct {v0, p1, v1}, Labcd/yF$a;-><init>(Labcd/UE;I)V

    return-object v0
.end method

.method public j6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/yF;->Zo:Ljava/lang/String;

    return-object v0
.end method
