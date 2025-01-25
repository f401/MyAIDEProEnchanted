.class public Lcom/s1243808733/data/SettingsBackup;
.super Ljava/lang/Object;
.source "SettingsBackup.java"


# instance fields
.field private codeHighlight:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/s1243808733/data/CodeHighlight;",
            ">;"
        }
    .end annotation
.end field

.field private customCommand:Ljava/lang/String;

.field private preference:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/data/SettingsBackup;->codeHighlight:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCodeHighlight()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/s1243808733/data/CodeHighlight;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/s1243808733/data/SettingsBackup;->codeHighlight:Ljava/util/List;

    return-object v0
.end method

.method public getCustomCommand()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/s1243808733/data/SettingsBackup;->customCommand:Ljava/lang/String;

    return-object v0
.end method

.method public getPreference()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/s1243808733/data/SettingsBackup;->preference:Ljava/lang/String;

    return-object v0
.end method

.method public setCodeHighlight(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/s1243808733/data/CodeHighlight;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/s1243808733/data/SettingsBackup;->codeHighlight:Ljava/util/List;

    return-void
.end method

.method public setCustomCommand(Ljava/lang/String;)V
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/s1243808733/data/SettingsBackup;->customCommand:Ljava/lang/String;

    return-void
.end method

.method public setPreference(Ljava/lang/String;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/s1243808733/data/SettingsBackup;->preference:Ljava/lang/String;

    return-void
.end method
