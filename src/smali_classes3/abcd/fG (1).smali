.class public Labcd/fG;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/fG$a;
    }
.end annotation


# static fields
.field public static final j6:Labcd/fG;


# instance fields
.field final DW:Labcd/qG;

.field final FH:Ljava/lang/String;

.field final Hw:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Labcd/fG$a;

    const-string v1, "UNINTERESTING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Labcd/fG$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/fG;->j6:Labcd/fG;

    return-void
.end method

.method constructor <init>(Labcd/qG;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/fG;->DW:Labcd/qG;

    iput-object p2, p0, Labcd/fG;->FH:Ljava/lang/String;

    iput p3, p0, Labcd/fG;->Hw:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/fG;->FH:Ljava/lang/String;

    return-object v0
.end method
