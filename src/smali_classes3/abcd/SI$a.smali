.class Labcd/SI$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/SI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final j6:Labcd/gE$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LgE$b<",
            "Labcd/SI$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final DW:Z

.field final FH:Z

.field final Hw:Z

.field final Zo:Z

.field final v5:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/RI;

    invoke-direct {v0}, Labcd/RI;-><init>()V

    sput-object v0, Labcd/SI$a;->j6:Labcd/gE$b;

    return-void
.end method

.method constructor <init>(Labcd/gE;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "receive"

    const-string v1, "fsckobjects"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Labcd/SI$a;->DW:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Labcd/SI$a;->FH:Z

    const-string v3, "denydeletes"

    invoke-virtual {p1, v0, v3, v2}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    xor-int/2addr v3, v1

    iput-boolean v3, p0, Labcd/SI$a;->Hw:Z

    const-string v3, "denynonfastforwards"

    invoke-virtual {p1, v0, v3, v2}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Labcd/SI$a;->v5:Z

    const-string v0, "repack"

    const-string v2, "usedeltabaseoffset"

    invoke-virtual {p1, v0, v2, v1}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Labcd/SI$a;->Zo:Z

    return-void
.end method
