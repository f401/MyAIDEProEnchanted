.class public abstract Labcd/PC$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/PC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# instance fields
.field final j6:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Labcd/PC$b;->j6:[B

    return-void
.end method


# virtual methods
.method public abstract j6(Labcd/QC;)V
.end method
