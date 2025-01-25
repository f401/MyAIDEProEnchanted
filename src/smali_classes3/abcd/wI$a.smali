.class Labcd/wI$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/wI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field DW:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field FH:Labcd/wI$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LwI$a<",
            "TV;>;"
        }
    .end annotation
.end field

.field final j6:J


# direct methods
.method constructor <init>(JLjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Labcd/wI$a;->j6:J

    iput-object p3, p0, Labcd/wI$a;->DW:Ljava/lang/Object;

    return-void
.end method
