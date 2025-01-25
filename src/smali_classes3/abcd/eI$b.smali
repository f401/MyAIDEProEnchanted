.class Labcd/eI$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/eI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field static final j6:Labcd/gE$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LgE$b<",
            "Labcd/eI$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final DW:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/fI;

    invoke-direct {v0}, Labcd/fI;-><init>()V

    sput-object v0, Labcd/eI$b;->j6:Labcd/gE$b;

    return-void
.end method

.method constructor <init>(Labcd/gE;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "usedeltabaseoffset"

    const/4 v1, 0x1

    const-string v2, "repack"

    invoke-virtual {p1, v2, v0, v1}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Labcd/eI$b;->DW:Z

    return-void
.end method
