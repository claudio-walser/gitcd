from gitcd.interface.cli.abstract import BaseCommand

from gitcd.git.branch import Branch


class Status(BaseCommand):

    def run(self, branch: Branch):
        self.interface.header('git-cd status')
        # @todo
