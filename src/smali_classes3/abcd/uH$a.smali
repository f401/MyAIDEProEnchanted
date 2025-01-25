.class Labcd/uH$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/uH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final DW:Labcd/uH$c;

.field volatile FH:Z

.field final j6:Labcd/uH$a;


# direct methods
.method constructor <init>(Labcd/uH$a;Labcd/uH$c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/uH$a;->j6:Labcd/uH$a;

    iput-object p2, p0, Labcd/uH$a;->DW:Labcd/uH$c;

    return-void
.end method


# virtual methods
.method final j6()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/uH$a;->FH:Z

    iget-object v0, p0, Labcd/uH$a;->DW:Labcd/uH$c;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->enqueue()Z

    return-void
.end method
