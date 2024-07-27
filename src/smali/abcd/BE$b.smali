.class public Labcd/BE$b;
.super Labcd/BE;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/BE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final Hw:Labcd/yE;


# direct methods
.method public constructor <init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;Labcd/yE;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Labcd/BE;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;)V

    iput-object p4, p0, Labcd/BE$b;->Hw:Labcd/yE;

    return-void
.end method


# virtual methods
.method public FH()Labcd/yE;
    .registers 2

    iget-object v0, p0, Labcd/BE$b;->Hw:Labcd/yE;

    return-object v0
.end method

.method public Hw()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
