.class public Labcd/In;
.super Ljava/lang/Object;


# instance fields
.field public DW:Z

.field public FH:Z

.field public Hw:Z

.field public VH:Z

.field public Zo:Ljava/lang/String;

.field public gn:Ljava/io/PrintStream;

.field public j6:I

.field public v5:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Labcd/In;->j6:I

    iput-boolean v1, p0, Labcd/In;->DW:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/In;->FH:Z

    iput-boolean v1, p0, Labcd/In;->Hw:Z

    iput-object v2, p0, Labcd/In;->v5:Ljava/lang/String;

    iput-object v2, p0, Labcd/In;->Zo:Ljava/lang/String;

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iput-object v0, p0, Labcd/In;->gn:Ljava/io/PrintStream;

    return-void
.end method
