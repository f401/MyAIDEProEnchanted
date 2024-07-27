.class public Lcom/s1243808733/aide/highlight/color/Color;
.super Ljava/lang/Object;
.source "Color.java"


# instance fields
.field public final darkColor:Ljava/lang/String;

.field public final label:Ljava/lang/String;

.field public final lightColor:Ljava/lang/String;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/s1243808733/aide/highlight/color/Color;->name:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/s1243808733/aide/highlight/color/Color;->label:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/s1243808733/aide/highlight/color/Color;->lightColor:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/s1243808733/aide/highlight/color/Color;->darkColor:Ljava/lang/String;

    return-void
.end method
