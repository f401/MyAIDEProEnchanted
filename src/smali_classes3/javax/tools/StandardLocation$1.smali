.class Ljavax/tools/StandardLocation$1;
.super Ljava/lang/Object;
.source "StandardLocation.java"

# interfaces
.implements Ljavax/tools/JavaFileManager$Location;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/tools/StandardLocation;->locationFor(Ljava/lang/String;)Ljavax/tools/JavaFileManager$Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 87
    iput-object p1, p0, Ljavax/tools/StandardLocation$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Ljavax/tools/StandardLocation$1;->val$name:Ljava/lang/String;

    return-object v0
.end method

.method public isOutputLocation()Z
    .registers 3

    .line 89
    iget-object v0, p0, Ljavax/tools/StandardLocation$1;->val$name:Ljava/lang/String;

    const-string v1, "_OUTPUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
