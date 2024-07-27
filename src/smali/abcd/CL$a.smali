.class Labcd/CL$a;
.super Labcd/CL;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/CL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private DW:Z

.field final FH:Labcd/CL;


# direct methods
.method public constructor <init>(Labcd/CL;Ljava/io/OutputStream;)V
    .registers 4

    iput-object p1, p0, Labcd/CL$a;->FH:Labcd/CL;

    invoke-direct {p0, p2}, Labcd/CL;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/CL$a;->DW:Z

    return-void
.end method


# virtual methods
.method public j6(I)V
    .registers 3

    iget-boolean v0, p0, Labcd/CL$a;->DW:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/CL$a;->DW:Z

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Labcd/CL;->j6(I)V

    goto :goto_0
.end method
