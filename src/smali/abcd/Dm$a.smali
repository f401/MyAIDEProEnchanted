.class public Labcd/Dm$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Dm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final DW:Labcd/Ks;

.field private final FH:Labcd/Js;

.field private final Hw:I

.field private final j6:Labcd/Ks;


# direct methods
.method public constructor <init>(Labcd/Ks;Labcd/Ks;Labcd/Js;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Labcd/Dm$a;->j6:Labcd/Ks;

    iput-object p2, p0, Labcd/Dm$a;->DW:Labcd/Ks;

    iput-object p3, p0, Labcd/Dm$a;->FH:Labcd/Js;

    iput p4, p0, Labcd/Dm$a;->Hw:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "innerClass == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public DW()Labcd/Ks;
    .registers 2

    iget-object v0, p0, Labcd/Dm$a;->j6:Labcd/Ks;

    return-object v0
.end method

.method public FH()Labcd/Js;
    .registers 2

    iget-object v0, p0, Labcd/Dm$a;->FH:Labcd/Js;

    return-object v0
.end method

.method public Hw()Labcd/Ks;
    .registers 2

    iget-object v0, p0, Labcd/Dm$a;->DW:Labcd/Ks;

    return-object v0
.end method

.method public j6()I
    .registers 2

    iget v0, p0, Labcd/Dm$a;->Hw:I

    return v0
.end method
